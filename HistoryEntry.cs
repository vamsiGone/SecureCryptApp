using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SecureCryptApp
{
    public class HistoryEntry
    {
        public int Sno { get; set; }
        public int Id { get; set; }
        public string PlainText { get; set; }
        public string EncryptRDecryptText { get; set; }
        public string privatekey { get; set; }
        public string Mode { get; set; }
        public int UserId { get; set; }
    }
}