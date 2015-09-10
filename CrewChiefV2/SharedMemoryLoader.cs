using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2
{
    interface SharedMemoryLoader
    {
        Boolean Initialise();

        Object ReadSharedMemory();

        void Dispose();
    }
}
