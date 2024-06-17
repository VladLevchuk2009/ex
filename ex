class Program
{

    interface Lamp
    {
        string LampType { get; set; }
        string LampProducer { get; set; }
        int LampPower { get; set; }
        string LampKind { get; set; }
        int LampNumber { get; set; }
    }

    interface Camera
    {
        string CameraType { get; set; }
        string CameraProducer { get; set; }
        int CameraSensitivity { get; set; }

        public void Write()
        {
            Console.WriteLine("$type = {type}");
            Console.WriteLine("$producer = {producer}");
            Console.WriteLine("$sensitivity = {sensitivity}");
        }
    }

    class PhotoStudio: Lamp, Camera
    {
        public string LampType { get; set; }
        public string LampProducer { get; set; }
        public int LampPower { get; set; }
        public string LampKind { get; set; }
        public int LampNumber { get; set; }
        public string CameraType { get; set; }
        public string CameraProducer { get; set; }
        public int CameraSensitivity { get; set; }

        public PhotoStudio(string LampType, string LampProducer, int LampPower, string LampKind, int LampNumber, string CameraType, string CameraProducer , int CameraSensitivity) { 
            this.LampType = LampType;
            this.LampProducer = LampProducer; 
            this.LampPower = LampPower; 
            this.LampKind = LampKind;
            this.LampNumber = LampNumber;
            this.CameraType = CameraType;
            this.CameraProducer = CameraProducer;
            this.CameraSensitivity = CameraSensitivity;   
        }

        public void Write()
        {
            Console.WriteLine("LampType = "+LampType);
            Console.WriteLine("LampProducer = " + LampProducer);
            Console.WriteLine("LampPower = " + LampPower);
            Console.WriteLine("LampKind = " + LampKind);
            Console.WriteLine("LampNumber = " + LampNumber);
            Console.WriteLine("CameraType = " + CameraType);
            Console.WriteLine("CameraProducer = " + CameraProducer);
            Console.WriteLine("CameraSensitivity = " + CameraSensitivity);
        }

    }


    static void Main(string[] args)
    {
        PhotoStudio photoStudio1 = new PhotoStudio("LampType1", "LampProducer1", 100, "LampKind1",1, "CameraType1", "CameraProducer1", 1);
        PhotoStudio photoStudio2 = new PhotoStudio("LampType2", "LampProducer2", 200, "LampKind2", 3, "CameraType2", "CameraProducer2", 2);

        Console.WriteLine("photoStudio1 information:");
        photoStudio1.Write();

        Console.WriteLine();
        Console.WriteLine("photoStudio2 information:");
        photoStudio2.Write();

        photoStudio1.CameraSensitivity = 3;
        Console.WriteLine();
        Console.WriteLine("photoStudio1.CameraSensitivity = " + photoStudio1.CameraSensitivity);
    }
}
