﻿using System;
using System.Collections.Generic;
using System.IO;
using System.IO.MemoryMappedFiles;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace CrewChiefV2.PCars
{
    class PCarsSharedMemoryReader : SharedMemoryLoader
    {
        private MemoryMappedFile memoryMappedFile;
        private GCHandle handle;
        private int sharedmemorysize;
        private byte[] sharedMemoryReadBuffer;
        private Boolean initialised = false;

        public Boolean Initialise()
        {
            lock (this)
            {
                if (!initialised)
                {
                    Console.WriteLine("Initialising pcars shared memory");
                    try
                    {
                        memoryMappedFile = MemoryMappedFile.OpenExisting("$pcars$");
                        sharedmemorysize = Marshal.SizeOf(typeof(pCarsAPIStruct));
                        sharedMemoryReadBuffer = new byte[sharedmemorysize];
                        initialised = true;
                    }
                    catch (Exception ex)
                    {
                        initialised = false;
                    }
                }
                return initialised;
            }            
        }

        public Object ReadSharedMemory()
        {
            lock (this)
            {
                pCarsAPIStruct _pcarsapistruct = new pCarsAPIStruct();
                if (!initialised)
                {
                    if (!Initialise())
                    {
                        throw new SharedMemoryReadException("Failed to initialise shared memory");
                    }
                }
                try
                {
                    using (var sharedMemoryStreamView = memoryMappedFile.CreateViewStream())
                    {
                        BinaryReader _SharedMemoryStream = new BinaryReader(sharedMemoryStreamView);
                        sharedMemoryReadBuffer = _SharedMemoryStream.ReadBytes(sharedmemorysize);
                        handle = GCHandle.Alloc(sharedMemoryReadBuffer, GCHandleType.Pinned);
                        _pcarsapistruct = (pCarsAPIStruct)Marshal.PtrToStructure(handle.AddrOfPinnedObject(), typeof(pCarsAPIStruct));
                        //Console.WriteLine(_pcarsapistruct.mSpeed);
                        handle.Free();
                    }

                    return _pcarsapistruct;
                }
                catch (Exception ex)
                {
                    throw new SharedMemoryReadException(ex.Message, ex);
                }
            }            
        }

        public void Dispose()
        {
            if (memoryMappedFile != null)
            {
                memoryMappedFile.Dispose();
            }
        }
    }
}
