using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2
{
    interface GameDataReader
    {
        Boolean Initialise();

        Object ReadGameData();

        void Dispose();
    }
}
