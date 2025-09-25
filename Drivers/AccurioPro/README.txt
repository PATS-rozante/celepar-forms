Dispatcher� Phoenix Version 6.0
Copyright (C) 2010-2016 Konica Minolta Business Solutions U.S.A., Inc.
All Rights Reserved

Dispatcher� Phoenix Version 6.0
Konica Minolta Business Solutions U.S.A., Inc. and the Solutions
Engineering Center have made every effort to provide you with
a quality product. However, if you find any issues with the
software, please contact us at sec@kmbs.konicaminolta.us.

To view recent product changes, go to
https://www.sec.kmbs.us/version2/products/dppe/history.html.

-------------------------------------------------------------------------------
*** Installation ***


If you received Dispatcher� Phoenix on a CD, and you have auto play
enabled, please follow the instructions on the screen to install Dispatcher�
Phoenix.

   If you do not have auto play enabled, you can install it as follows:

     1. Select Run from the Start button menu.
     2. Type the full name of the file (for example, D:\Setup.exe).
     3. Press the Enter key, and follow the prompts.

-------------------------------------------------------------------------------
System Requirements to run the application.

Supported Operating Systems:
    1. The latest Service Pack for the following OS' are supported:
      - Windows Vista - Except Starter Edition
      - Windows 7 - Except Starter Edition
      - Windows 8 - Except RT
      - Windows 8.1 - Except RT
      - Windows 10 
      - Windows Server 2008
      - Windows Server 2008 R2
      - Windows Server 2012
      - Windows Server 2012 R2

      * For best operation, please install the latest updates for your OS.

    2. You must have administrator privileges to install and
       register the application.

    3. Your Operating System must support .NET Framework v4.0 or greater.

    4. Your Operating System must support PowerShell v2.0 or greater.

    5. Supported Architectures:
      - x86 (32-bit)
      - x64 (64-bit)

Hardware Requirements:
    Minimum:
        Pentium 4, 2 GHz or higher processor with
        4 GB RAM; 128 MB of VRAM or more

    Disk space:
        x86 and x64 - 2 GB or more

    Recommended:
        Quad Core, 2GHz or higher processor with
        8 GB RAM; 512 MB of VRAM or higher

    Disk space:
        x86 and x64 - 4 GB or more

-------------------------------------------------------------------------------
Video Card Requirements

Dispatcher� Phoenix is developed using Microsoft WPF technology, which is
optimized for with newer hardware. Some graphics/visual artifacts may be seen
when using Konica Minolta� Dispatcher Phoenix on PCs using older video
drivers. Upgrading your video driver, or turning off hardware acceleration,
may correct the issue.


To get the latest update for your Video Driver:

   1. Open the Device Manager.
   2. Under Display adapters, make a note of your video driver version.
   3. Go to the web site for the manufacturer of your adapter
      (NVidia, Intel, or ATI) and download the latest updated driver.
   4. Install the newer driver and then try Dispatcher� Phoenix
      again. If the display is still having problems, try turning off
      hardware acceleration.


To Turn Off Hardware Acceleration

   1. Click on Windows "Start" menu, then select "Run".
   2. Type "cmd" command and click OK.
   3. At the command prompt type,
         cd %windir%\system32
      Press Enter and then type,
         dxdiag.exe
   4. In the DirectX Diagnostic Tool dialog that opens,
      go to the Display tab and Disable DirectDraw Acceleration.
   5. Open Dispatcher� Phoenix and if you still
      see artifacts, you might need a better video card.

Minimum Video Card Requirements:

   * DirectX version: Greater than or equal to version 7.0
   * Video RAM: Must be greater than or equal to 30MB.
   * Multi-texture units: Number of units must greater than or equal to 2.
   * Graphics Card should support: Rendering Tier 1


   Common graphics cards that support Rendering Tier 1:

   * ATI     Radeon models: 256, 7000, 7500, 8500, 9000, 9100, 9200, and 9250
   * Intel   Intel Extreme Graphics models: 845G, 845GE, 845GL, and 845GV
             Intel Extreme Graphics II models: 852GME, 855GM, 855GME, 865G,
                                               and 865GV
   * NVidia  GeForce 256
             GeForce2 models: GTS, MX, MX100, MX200, MX400, Pro, Ti, and Ultra
             GeForce3 models: Ti200 and Ti500
             GeForce4 models: MX420, MX440, MX460, MX4000, Ti4200, Ti4400,
                              Ti4600, and Ti4800

Recommended Video Card Requirements:

   * DirectX version: DirectX 9-capable video card running at 1024 x 768 or
     higher display resolution
   * Video RAM: Must be greater than or equal to 512 MB.
   * Pixel shader: Version level must greater than or equal to 2.0.
   * Vertex shader: Version level must greater than or equal to 2.0.
   * Multi-texture units: Number of units must greater than or equal to 4.
   * Graphics Card should support: Rendering Tier 2


   Common graphics cards that support Rendering Tier 2:

   * ATI      Radeon models: 9550, 9600, 9800, and X-series
   * Intel    Intel GMA900 models: 915G
              Intel GMA950 models: 945G
   * NVidia   Geforce FX-series, 6xxx-series, and 7xxx-series

-------------------------------------------------------------------------------

Known Issues:

1. If installer requires a mid-way restart and the user is running from a
location which requires entering credentials before accessing, the installer
will not automatically continue after restart. To continue, the user needs to
run the install again.

2. The following warning about Windows Firewall may display while upgrading:
      "Windows Firewall has blocked some features of this program."

   You can click the "Allow Access" button on the message box to continue the
   installation process.
