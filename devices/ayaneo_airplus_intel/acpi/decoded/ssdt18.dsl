/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./encoded/ssdt18.dat, Wed Feb 28 09:49:26 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000005E4 (1508)
 *     Revision         0x02
 *     Checksum         0x0D
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (_SB_.CPPC, FieldUnitObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PR00, DeviceObj)
    External (TCNT, FieldUnitObj)

    Scope (\_SB.PR00)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.CPPC) /* External reference */
        }

        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If ((\_SB.OSCP & 0x0400))
            {
                Return (TPSS) /* \_SB_.PR00.TPSS */
            }
            Else
            {
                Return (LPSS) /* \_SB_.PR00.LPSS */
            }
        }

        Name (LPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x000009C5, 
                0x00003A98, 
                0x0000000A, 
                0x0000000A, 
                0x00002C00, 
                0x00002C00
            }, 

            Package (0x06)
            {
                0x000009C4, 
                0x00003A98, 
                0x0000000A, 
                0x0000000A, 
                0x00001900, 
                0x00001900
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x000034AF, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x00000898, 
                0x000031D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001600, 
                0x00001600
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x00002C3D, 
                0x0000000A, 
                0x0000000A, 
                0x00001400, 
                0x00001400
            }, 

            Package (0x06)
            {
                0x0000076C, 
                0x0000298B, 
                0x0000000A, 
                0x0000000A, 
                0x00001300, 
                0x00001300
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x0000244C, 
                0x0000000A, 
                0x0000000A, 
                0x00001100, 
                0x00001100
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x000021C2, 
                0x0000000A, 
                0x0000000A, 
                0x00001000, 
                0x00001000
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00001CD6, 
                0x0000000A, 
                0x0000000A, 
                0x00000E00, 
                0x00000E00
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x0000181F, 
                0x0000000A, 
                0x0000000A, 
                0x00000C00, 
                0x00000C00
            }, 

            Package (0x06)
            {
                0x0000044C, 
                0x000015D7, 
                0x0000000A, 
                0x0000000A, 
                0x00000B00, 
                0x00000B00
            }, 

            Package (0x06)
            {
                0x000003E8, 
                0x0000139C, 
                0x0000000A, 
                0x0000000A, 
                0x00000A00, 
                0x00000A00
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x00000F4D, 
                0x0000000A, 
                0x0000000A, 
                0x00000800, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002BC, 
                0x00000D38, 
                0x0000000A, 
                0x0000000A, 
                0x00000700, 
                0x00000700
            }, 

            Package (0x06)
            {
                0x000001F4, 
                0x00000934, 
                0x0000000A, 
                0x0000000A, 
                0x00000500, 
                0x00000500
            }, 

            Package (0x06)
            {
                0x00000190, 
                0x00000745, 
                0x0000000A, 
                0x0000000A, 
                0x00000400, 
                0x00000400
            }
        })
        Name (TPSS, Package (0x17)
        {
            Package (0x06)
            {
                0x000009C5, 
                0x00003A98, 
                0x0000000A, 
                0x0000000A, 
                0x00002C00, 
                0x00002C00
            }, 

            Package (0x06)
            {
                0x000009C4, 
                0x00003A98, 
                0x0000000A, 
                0x0000000A, 
                0x00001900, 
                0x00001900
            }, 

            Package (0x06)
            {
                0x00000960, 
                0x0000379C, 
                0x0000000A, 
                0x0000000A, 
                0x00001800, 
                0x00001800
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x000034AF, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x00000898, 
                0x000031D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001600, 
                0x00001600
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x00002EFF, 
                0x0000000A, 
                0x0000000A, 
                0x00001500, 
                0x00001500
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x00002C3D, 
                0x0000000A, 
                0x0000000A, 
                0x00001400, 
                0x00001400
            }, 

            Package (0x06)
            {
                0x0000076C, 
                0x0000298B, 
                0x0000000A, 
                0x0000000A, 
                0x00001300, 
                0x00001300
            }, 

            Package (0x06)
            {
                0x00000708, 
                0x000026E5, 
                0x0000000A, 
                0x0000000A, 
                0x00001200, 
                0x00001200
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x0000244C, 
                0x0000000A, 
                0x0000000A, 
                0x00001100, 
                0x00001100
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x000021C2, 
                0x0000000A, 
                0x0000000A, 
                0x00001000, 
                0x00001000
            }, 

            Package (0x06)
            {
                0x000005DC, 
                0x00001F44, 
                0x0000000A, 
                0x0000000A, 
                0x00000F00, 
                0x00000F00
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00001CD6, 
                0x0000000A, 
                0x0000000A, 
                0x00000E00, 
                0x00000E00
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00001A74, 
                0x0000000A, 
                0x0000000A, 
                0x00000D00, 
                0x00000D00
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x0000181F, 
                0x0000000A, 
                0x0000000A, 
                0x00000C00, 
                0x00000C00
            }, 

            Package (0x06)
            {
                0x0000044C, 
                0x000015D7, 
                0x0000000A, 
                0x0000000A, 
                0x00000B00, 
                0x00000B00
            }, 

            Package (0x06)
            {
                0x000003E8, 
                0x0000139C, 
                0x0000000A, 
                0x0000000A, 
                0x00000A00, 
                0x00000A00
            }, 

            Package (0x06)
            {
                0x00000384, 
                0x0000116D, 
                0x0000000A, 
                0x0000000A, 
                0x00000900, 
                0x00000900
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x00000F4D, 
                0x0000000A, 
                0x0000000A, 
                0x00000800, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002BC, 
                0x00000D38, 
                0x0000000A, 
                0x0000000A, 
                0x00000700, 
                0x00000700
            }, 

            Package (0x06)
            {
                0x00000258, 
                0x00000B30, 
                0x0000000A, 
                0x0000000A, 
                0x00000600, 
                0x00000600
            }, 

            Package (0x06)
            {
                0x000001F4, 
                0x00000934, 
                0x0000000A, 
                0x0000000A, 
                0x00000500, 
                0x00000500
            }, 

            Package (0x06)
            {
                0x00000190, 
                0x00000745, 
                0x0000000A, 
                0x0000000A, 
                0x00000400, 
                0x00000400
            }
        })
    }
}

