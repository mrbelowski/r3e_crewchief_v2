using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2
{
    class SharedMemoryReadException : Exception
    {
        public Exception cause;
        public String message;
        public SharedMemoryReadException(String message, Exception cause)
        {
            this.message = message;
            this.cause = cause;
        }
        public SharedMemoryReadException(String message)
        {
            this.message = message;
        }
    }
}
