﻿
/*
 * 
 * 
 * 
 * 
 
 _______                __        
|     __|.----.-----.--|  |.-----.
|    |  ||  __|  _  |  _  ||  -__|
|_______||____|_____|_____||_____|
                                  
 _______ __                                        
|     __|  |_.----.-----.---.-.--------.-----.----.
|__     |   _|   _|  -__|  _  |        |  -__|   _|
|_______|____|__| |_____|___._|__|__|__|_____|__|  

 */


using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.IO.Ports;  // For SerialPorts

namespace GcodeStreamer
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            getavaialbleports();                            // Get ports when initialize
        }


        public void ChooseFolder()                          // Choose folder
        {
            if (folderBrowserDialog1.ShowDialog() == DialogResult.OK)
            {
                textBox1.Text = folderBrowserDialog1.SelectedPath;
            }
        }

        void getavaialbleports()                            // Print available ports in comboBox
        {
            String[] ports = SerialPort.GetPortNames();
            comboBox1.Items.AddRange(ports);
        }

        private void serialPort1_DataReceived(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {

        }

        private void serialPort1_PinChanged(object sender, System.IO.Ports.SerialPinChangedEventArgs e)
        {

        }

        private void ConnectPort_button_Click(object sender, EventArgs e)
        {

            // Get a list of serial port names.
            string[] ports = SerialPort.GetPortNames();

            Console.WriteLine("The following serial ports were found:");

            // Display each port name to the console.
            foreach (string port in ports)
            {
                Console.WriteLine(port);
            }

            Console.ReadLine();
        }


        private void LoadFile_Click(object sender, EventArgs e)
        {
            // Show the dialog and get result.
            DialogResult result = openFileDialog1.ShowDialog();
            if (result == DialogResult.OK) // Test result.
            {
                fileNameLabel.Text = openFileDialog1.FileName;
                // Get image by this file:
               // pictureBox1.Image = Image.FromFile(openFileDialog1.FileName - ".gcde" + ".jpg");                                  // === ERROR! === Find how to get with this
            }
            Console.WriteLine(result); // <-- For debugging use.
        }

        private void GoButton_Click(object sender, EventArgs e)
        {

            // Testing image loading:
            /*
            pictureBox1.Size = new Size(210, 110);
            this.Controls.Add(pictureBox1);

            Bitmap flag = new Bitmap(200, 100);
            Graphics flagGraphics = Graphics.FromImage(flag);
            int red = 0;
            int white = 11;
            while (white <= 100)
            {
                flagGraphics.FillRectangle(Brushes.Red, 0, red, 200, 10);
                flagGraphics.FillRectangle(Brushes.White, 0, white, 200, 10);
                red += 20;
                white += 20;
            }
            pictureBox1.Image = flag;
            */

        }
    }
}