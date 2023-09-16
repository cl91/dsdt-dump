/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181213 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT, Sat Sep 16 11:14:31 2023
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00002351 (9041)
 *     Revision         0x02
 *     Checksum         0xD7
 *     OEM ID           "LGSON "
 *     OEM Table ID     "TP-R00  "
 *     OEM Revision     0x00000476 (1142)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210105 (539033861)
 */
DefinitionBlock ("", "DSDT", 2, "LGSON ", "TP-R00  ", 0x00000476)
{
    Scope (_SB)
    {
        Device (PCI0)
        {
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (ADDR, 0x00000EFDFE0000A0)
            OperationRegion (FLAG, SystemMemory, ADDR, 0x04)
            Field (FLAG, AnyAcc, NoLock, Preserve)
            {
                PAM0,   1
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x4000,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xC000,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x20000000,         // Range Minimum
                    0x7FFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x60000000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x00000E0080000000, // Range Minimum
                    0x00000EEFCFFFFFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x000000EF50000000, // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
            })
            CreateQWordField (_CRS, \_SB.PCI0._Y00._LEN, FL4G)  // _LEN: Length
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                If (((PAM0 & One) == Zero))
                {
                    FL4G = Zero
                }
            }

            Name (_PRT, Package (0x3D)  // _PRT: PCI Routing Table
            {
                Package (0x04)
                {
                    0x0003FFFF, 
                    Zero, 
                    Zero, 
                    0x4C
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    One, 
                    Zero, 
                    0x4E
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    Zero, 
                    0x71
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    One, 
                    Zero, 
                    0x70
                }, 

                Package (0x04)
                {
                    0x0005FFFF, 
                    Zero, 
                    Zero, 
                    0x73
                }, 

                Package (0x04)
                {
                    0x0005FFFF, 
                    One, 
                    Zero, 
                    0x72
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    Zero, 
                    Zero, 
                    0x5D
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    Zero, 
                    0x5C
                }, 

                Package (0x04)
                {
                    0x0007FFFF, 
                    Zero, 
                    Zero, 
                    0x7A
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    Zero, 
                    Zero, 
                    0x50
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    One, 
                    Zero, 
                    0x51
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x02, 
                    Zero, 
                    0x52
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    Zero, 
                    Zero, 
                    0x60
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    One, 
                    Zero, 
                    0x60
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x02, 
                    Zero, 
                    0x60
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x03, 
                    Zero, 
                    0x60
                }, 

                Package (0x04)
                {
                    0x000AFFFF, 
                    Zero, 
                    Zero, 
                    0x61
                }, 

                Package (0x04)
                {
                    0x000AFFFF, 
                    One, 
                    Zero, 
                    0x61
                }, 

                Package (0x04)
                {
                    0x000AFFFF, 
                    0x02, 
                    Zero, 
                    0x61
                }, 

                Package (0x04)
                {
                    0x000AFFFF, 
                    0x03, 
                    Zero, 
                    0x61
                }, 

                Package (0x04)
                {
                    0x000BFFFF, 
                    Zero, 
                    Zero, 
                    0x62
                }, 

                Package (0x04)
                {
                    0x000BFFFF, 
                    One, 
                    Zero, 
                    0x62
                }, 

                Package (0x04)
                {
                    0x000BFFFF, 
                    0x02, 
                    Zero, 
                    0x62
                }, 

                Package (0x04)
                {
                    0x000BFFFF, 
                    0x03, 
                    Zero, 
                    0x62
                }, 

                Package (0x04)
                {
                    0x000CFFFF, 
                    Zero, 
                    Zero, 
                    0x63
                }, 

                Package (0x04)
                {
                    0x000CFFFF, 
                    One, 
                    Zero, 
                    0x63
                }, 

                Package (0x04)
                {
                    0x000CFFFF, 
                    0x02, 
                    Zero, 
                    0x63
                }, 

                Package (0x04)
                {
                    0x000CFFFF, 
                    0x03, 
                    Zero, 
                    0x63
                }, 

                Package (0x04)
                {
                    0x000DFFFF, 
                    Zero, 
                    Zero, 
                    0x64
                }, 

                Package (0x04)
                {
                    0x000DFFFF, 
                    One, 
                    Zero, 
                    0x64
                }, 

                Package (0x04)
                {
                    0x000DFFFF, 
                    0x02, 
                    Zero, 
                    0x64
                }, 

                Package (0x04)
                {
                    0x000DFFFF, 
                    0x03, 
                    Zero, 
                    0x64
                }, 

                Package (0x04)
                {
                    0x000EFFFF, 
                    Zero, 
                    Zero, 
                    0x65
                }, 

                Package (0x04)
                {
                    0x000EFFFF, 
                    One, 
                    Zero, 
                    0x65
                }, 

                Package (0x04)
                {
                    0x000EFFFF, 
                    0x02, 
                    Zero, 
                    0x65
                }, 

                Package (0x04)
                {
                    0x000EFFFF, 
                    0x03, 
                    Zero, 
                    0x65
                }, 

                Package (0x04)
                {
                    0x000FFFFF, 
                    Zero, 
                    Zero, 
                    0x68
                }, 

                Package (0x04)
                {
                    0x000FFFFF, 
                    One, 
                    Zero, 
                    0x68
                }, 

                Package (0x04)
                {
                    0x000FFFFF, 
                    0x02, 
                    Zero, 
                    0x68
                }, 

                Package (0x04)
                {
                    0x000FFFFF, 
                    0x03, 
                    Zero, 
                    0x68
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    Zero, 
                    Zero, 
                    0x69
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    One, 
                    Zero, 
                    0x69
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    0x02, 
                    Zero, 
                    0x69
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    0x03, 
                    Zero, 
                    0x69
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    Zero, 
                    Zero, 
                    0x6A
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    One, 
                    Zero, 
                    0x6A
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    0x02, 
                    Zero, 
                    0x6A
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    0x03, 
                    Zero, 
                    0x6A
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    Zero, 
                    Zero, 
                    0x6B
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    One, 
                    Zero, 
                    0x6B
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    0x02, 
                    Zero, 
                    0x6B
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    0x03, 
                    Zero, 
                    0x6B
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    Zero, 
                    Zero, 
                    0x66
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    One, 
                    Zero, 
                    0x66
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x02, 
                    Zero, 
                    0x66
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x03, 
                    Zero, 
                    0x66
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x67
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    Zero, 
                    0x67
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    Zero, 
                    0x67
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    Zero, 
                    0x67
                }, 

                Package (0x04)
                {
                    0x0017FFFF, 
                    Zero, 
                    Zero, 
                    0x53
                }
            })
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PCIB)
        {
            Name (_ADR, 0x000A0000)  // _ADR: Address
            Device (XHCI)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_S3D, 0x04)  // _S3D: S3 Device State
                Name (_S4D, 0x04)  // _S4D: S4 Device State
                PowerResource (PUBS, 0x03, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        _STA = One
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        _STA = Zero
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PUBS
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PUBS
                })
            }
        }

        Device (USB0)
        {
            Name (_ADR, 0x00040001)  // _ADR: Address
            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB0.RHUB.PRT1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x01, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB0.RHUB.PRT1._PLD.PLDP */
                    }
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB0.RHUB.PRT2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x01, 0x8A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB0.RHUB.PRT2._PLD.PLDP */
                    }
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB0.RHUB.PRT3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0xA9, 0x4A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // .J......
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB0.RHUB.PRT3._PLD.PLDP */
                    }
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                ^PCIB.XHCI.PUBS
            })
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x0A, 
                    0x03
                })
            }
        }

        Device (USB1)
        {
            Name (_ADR, 0x00040000)  // _ADR: Address
            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB1.RHUB.PRT1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x01, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB1.RHUB.PRT1._PLD.PLDP */
                    }
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB1.RHUB.PRT2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x01, 0x8A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB1.RHUB.PRT2._PLD.PLDP */
                    }
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB1.RHUB.PRT3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0xA9, 0x4A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // .J......
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB1.RHUB.PRT3._PLD.PLDP */
                    }
                }
            }
        }

        Device (USB2)
        {
            Name (_ADR, 0x00050001)  // _ADR: Address
            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB2.RHUB.PRT1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x01, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB2.RHUB.PRT1._PLD.PLDP */
                    }
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB2.RHUB.PRT2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x01, 0x8A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB2.RHUB.PRT2._PLD.PLDP */
                    }
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB2.RHUB.PRT3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0xA9, 0x4A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // .J......
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB2.RHUB.PRT3._PLD.PLDP */
                    }
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                ^PCIB.XHCI.PUBS
            })
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    0x03
                })
            }
        }

        Device (USB3)
        {
            Name (_ADR, 0x00050000)  // _ADR: Address
            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB3.RHUB.PRT1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x01, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB3.RHUB.PRT1._PLD.PLDP */
                    }
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB3.RHUB.PRT2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x01, 0x8A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB3.RHUB.PRT2._PLD.PLDP */
                    }
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.USB3.RHUB.PRT3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0xA9, 0x4A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // .J......
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.USB3.RHUB.PRT3._PLD.PLDP */
                    }
                }
            }
        }

        Device (NIC0)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                ^PCIB.XHCI.PUBS
            })
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x05, 
                    0x03
                })
            }
        }

        Device (NIC1)
        {
            Name (_ADR, 0x00030001)  // _ADR: Address
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                ^PCIB.XHCI.PUBS
            })
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x06, 
                    0x03
                })
            }
        }

        Name (HDTF, Buffer (0x0E)
        {
             0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00   // ........
        })
        Name (HPTF, Buffer (0x15)
        {
            /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10,  // ........
            /* 0008 */  0x03, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 0x00   // ........
        })
        Device (SAT0)
        {
            Name (_ADR, 0x00080000)  // _ADR: Address
            Device (PORT)
            {
                Name (DIP0, Zero)
                Name (_ADR, 0xFFFF)  // _ADR: Address
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    DIP0 = Zero
                    If ((SizeOf (Arg0) == 0x0200))
                    {
                        CreateWordField (Arg0, 0x9C, M078)
                        If ((M078 & 0x08))
                        {
                            DIP0 = One
                        }
                    }
                }

                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    If (DIP0)
                    {
                        Return (HPTF) /* \_SB_.PCI0.HPTF */
                    }

                    Return (HDTF) /* \_SB_.PCI0.HDTF */
                }
            }
        }

        Device (SAT1)
        {
            Name (_ADR, 0x00080001)  // _ADR: Address
            Device (PORT)
            {
                Name (DIP1, Zero)
                Name (_ADR, 0xFFFF)  // _ADR: Address
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    DIP1 = Zero
                    If ((SizeOf (Arg0) == 0x0200))
                    {
                        CreateWordField (Arg0, 0x9C, M078)
                        If ((M078 & 0x08))
                        {
                            DIP1 = One
                        }
                    }
                }

                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    If (DIP1)
                    {
                        Return (HPTF) /* \_SB_.PCI0.HPTF */
                    }

                    Return (HDTF) /* \_SB_.PCI0.HDTF */
                }
            }
        }

        Device (SAT2)
        {
            Name (_ADR, 0x00080002)  // _ADR: Address
            Device (PORT)
            {
                Name (DIP2, Zero)
                Name (_ADR, 0xFFFF)  // _ADR: Address
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    DIP2 = Zero
                    If ((SizeOf (Arg0) == 0x0200))
                    {
                        CreateWordField (Arg0, 0x9C, M078)
                        If ((M078 & 0x08))
                        {
                            DIP2 = One
                        }
                    }
                }

                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    If (DIP2)
                    {
                        Return (HPTF) /* \_SB_.PCI0.HPTF */
                    }

                    Return (HDTF) /* \_SB_.PCI0.HDTF */
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (LPC)
        {
            Name (_ADR, 0x00170000)  // _ADR: Address
            Name (_S3D, 0x03)  // _S3D: S3 Device State
            Name (RID, Zero)
            Device (EC)
            {
                Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x1F)
                }

                Name (_UID, Zero)  // _UID: Unique ID
                Name (_GPE, 0x04)  // _GPE: General Purpose Events
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x0062,             // Range Minimum
                        0x0062,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0066,             // Range Minimum
                        0x0066,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                })
                OperationRegion (ECOR, EmbeddedControl, Zero, 0x0100)
                Field (ECOR, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x1E), 
                    CTMP,   8, 
                    Offset (0x5A), 
                    BLAC,   8, 
                    Offset (0x80), 
                    AST1,   1, 
                    BCF2,   1, 
                    BCG2,   1, 
                    BCF1,   1, 
                    BCG1,   1, 
                    LSTE,   1, 
                    AST2,   1, 
                    RPWR,   1, 
                    Offset (0x92), 
                    BVL,    8, 
                    BVH,    8, 
                    BCL,    8, 
                    BCH,    8, 
                    Offset (0x98), 
                    BRCL,   8, 
                    BRCH,   8, 
                    BFCL,   8, 
                    BFCH,   8, 
                    Offset (0xA2), 
                    BDVL,   8, 
                    BDVH,   8, 
                    Offset (0xAE), 
                    BDCL,   8, 
                    BDCH,   8, 
                    BSNL,   8, 
                    BSNH,   8
                }

                Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1001)
                }

                Name (ELID, Zero)
                Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1001)
                }

                Method (_Q3A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1002)
                }

                Method (_Q36, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1003)
                }

                Method (_Q37, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1004)
                }

                Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1005)
                }

                Method (_Q39, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1006)
                }

                Method (_Q34, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1007)
                }

                Method (_Q35, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1008)
                }

                Method (_Q3C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (HKEY, 0x1009)
                }

                Method (_Q21, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    If (LSTE)
                    {
                        ELID = Zero
                    }
                    Else
                    {
                        ELID = One
                    }

                    Notify (HKEY, 0x200A)
                }

                PowerResource (PUBS, 0x03, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (One)
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                    }
                }

                Device (HKEY)
                {
                    Name (_HID, "LOON0000")  // _HID: Hardware ID
                    Name (KMAP, Package (0x0A)
                    {
                        Package (0x03)
                        {
                            One, 
                            One, 
                            0x8E
                        }, 

                        Package (0x03)
                        {
                            One, 
                            0x02, 
                            0xE3
                        }, 

                        Package (0x03)
                        {
                            One, 
                            0x03, 
                            0x0212
                        }, 

                        Package (0x03)
                        {
                            One, 
                            0x04, 
                            0x01AF
                        }, 

                        Package (0x03)
                        {
                            One, 
                            0x05, 
                            0xE0
                        }, 

                        Package (0x03)
                        {
                            One, 
                            0x06, 
                            0xE1
                        }, 

                        Package (0x03)
                        {
                            One, 
                            0x07, 
                            0x71
                        }, 

                        Package (0x03)
                        {
                            One, 
                            0x08, 
                            0xEE
                        }, 

                        Package (0x03)
                        {
                            One, 
                            0x09, 
                            0xBE
                        }, 

                        Package (0x03)
                        {
                            0x02, 
                            0x0A, 
                            Zero
                        }
                    })
                    Method (ECBS, 1, Serialized)
                    {
                        BLAC = Arg0
                    }

                    Method (ECBG, 0, NotSerialized)
                    {
                        Return (BLAC) /* \_SB_.PCI0.LPC_.EC__.BLAC */
                    }

                    Method (ECSL, 0, NotSerialized)
                    {
                        Return (0x05)
                    }

                    Method (ECLL, 0, NotSerialized)
                    {
                        Return (0x64)
                    }

                    Method (GSWS, 0, NotSerialized)
                    {
                        If (ELID)
                        {
                            ELID = Zero
                            Return (NOr (LSTE, 0xFFFFFFFE))
                        }

                        Return (Zero)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                    }

                    Method (MHKV, 0, NotSerialized)
                    {
                        Return (0x0100)
                    }
                }

                Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (AC, 0x80) // Status Change
                    Notify (BAT0, 0x80) // Status Change
                    Notify (BAT0, 0x81) // Information Change
                }

                Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                {
                    Notify (AC, 0x80) // Status Change
                    Notify (BAT0, 0x80) // Status Change
                    Notify (BAT0, 0x81) // Information Change
                }

                Device (BAT0)
                {
                    Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (AST1)
                        {
                            Return (0x1F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                    {
                        Name (BIFP, Package (0x0D)
                        {
                            One, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            One, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            "LoongsonM", 
                            "LoongsonS", 
                            "LI-ION", 
                            "OEML"
                        })
                        Local1 = (BDVH * 0x0100)
                        Local1 += BDVL
                        BIFP [0x04] = Local1
                        Local1 = (BDCH * 0x0100)
                        Local1 += BDCL
                        BIFP [One] = Local1
                        Divide (Local1, 0x0A, Local2, BIFP [0x05])
                        Divide (Local1, 0x14, Local2, BIFP [0x06])
                        Divide (Local1, 0x64, Local2, BIFP [0x07])
                        Divide (Local1, 0x64, Local2, BIFP [0x08])
                        Local1 = (BFCH * 0x0100)
                        Local1 += BFCL
                        BIFP [0x02] = Local1
                        Local1 = (BSNH * 0x0100)
                        Local1 += BSNL
                        BIFP [0x0A] = Local1
                        Return (BIFP) /* \_SB_.PCI0.LPC_.EC__.BAT0._BIF.BIFP */
                    }

                    Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                    {
                        Name (BSTP, Package (0x04)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        If (RPWR)
                        {
                            If (BCG1)
                            {
                                BSTP [Zero] = 0x02
                            }
                            Else
                            {
                                BSTP [Zero] = Zero
                            }
                        }
                        Else
                        {
                            BSTP [Zero] = One
                        }

                        Local1 = (BCH * 0x0100)
                        BSTP [One] = (BCL + Local1)
                        Local1 = (BCH * 0x0100)
                        BSTP [One] = (BCL + Local1)
                        Local1 = (BRCH * 0x0100)
                        BSTP [0x02] = (BRCL + Local1)
                        Local1 = (BVH * 0x0100)
                        BSTP [0x03] = (BVL + Local1)
                        Return (BSTP) /* \_SB_.PCI0.LPC_.EC__.BAT0._BST.BSTP */
                    }
                }

                Device (AC)
                {
                    Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                    {
                        Return (RPWR) /* \_SB_.PCI0.LPC_.EC__.RPWR */
                    }
                }

                Device (KBD)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        Return (0x0303D041)
                    }

                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (MOU)
                {
                    Name (_HID, EisaId ("LEN2020"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                }
            }
        }
    }

    Scope (_SB)
    {
        Name (IDDR, 0x1FE00000)
        Name (FREQ, 0x09C4)
        OperationRegion (BASE, SystemMemory, IDDR, 0x0450)
        Field (BASE, AnyAcc, NoLock, Preserve)
        {
            Offset (0x20), 
            PRID,   64, 
            Offset (0x19C), 
            THSE,   32, 
            Offset (0x438), 
            SRAM,   64
        }

        Name (VETB, Package (0x07)
        {
            Package (0x03)
            {
                0x0000303030354133, 
                "3A5000", 
                0x09C4
            }, 

            Package (0x03)
            {
                0x4C4C303030354133, 
                "3A5000LL", 
                0x08FC
            }, 

            Package (0x03)
            {
                0x004D303030354133, 
                "3A5000M", 
                0x0898
            }, 

            Package (0x03)
            {
                0x0000303030354233, 
                "3B5000", 
                0x08FC
            }, 

            Package (0x03)
            {
                0x004C303030354333, 
                "3C5000L", 
                0x0898
            }, 

            Package (0x03)
            {
                0x0049303030354133, 
                "3A5000I", 
                0x0898
            }, 

            Package (0x03)
            {
                0x0069303030354133, 
                "3A5000i", 
                0x0898
            }
        })
        Local0 = Zero
        While ((Local0 < SizeOf (VETB)))
        {
            If ((DerefOf (DerefOf (VETB [Local0]) [Zero]) == PRID))
            {
                FREQ = DerefOf (DerefOf (VETB [Local0]) [0x02])
            }

            Local0++
        }

        Device (C000)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PXM, Zero)  // _PXM: Device Proximity
            Name (_STA, 0x0F)  // _STA: Status
            Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
            {
                Return (Zero)
            }

            Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
            {
                Return (Package (0x02)
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
            }

            Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
            {
                Return (LPSS) /* \_SB_.C000.LPSS */
            }

            Name (LPSS, Package (0x10)
            {
                Package (0x06)
                {
                    FREQ, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0103, 
                    0x03
                }, 

                Package (0x06)
                {
                    0x07D0, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x03, 
                    0x03
                }, 

                Package (0x06)
                {
                    0x0785, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0104, 
                    0x04
                }, 

                Package (0x06)
                {
                    0x06D6, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x04, 
                    0x04
                }, 

                Package (0x06)
                {
                    0x0672, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0105, 
                    0x05
                }, 

                Package (0x06)
                {
                    0x05DC, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x05, 
                    0x05
                }, 

                Package (0x06)
                {
                    0x055F, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0106, 
                    0x06
                }, 

                Package (0x06)
                {
                    0x04E2, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x06, 
                    0x06
                }, 

                Package (0x06)
                {
                    0x044C, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0107, 
                    0x07
                }, 

                Package (0x06)
                {
                    0x03E8, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x07, 
                    0x07
                }, 

                Package (0x06)
                {
                    0x0339, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0108, 
                    0x08
                }, 

                Package (0x06)
                {
                    0x02EE, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x08, 
                    0x08
                }, 

                Package (0x06)
                {
                    0x0226, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0109, 
                    0x09
                }, 

                Package (0x06)
                {
                    0x01F4, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x09, 
                    0x09
                }, 

                Package (0x06)
                {
                    0x0113, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x010A, 
                    0x0A
                }, 

                Package (0x06)
                {
                    0xFA, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0A, 
                    0x0A
                }
            })
        }

        Device (C001)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_PXM, Zero)  // _PXM: Device Proximity
            Name (_STA, 0x0F)  // _STA: Status
            Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
            {
                Return (Zero)
            }

            Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
            {
                Return (Package (0x02)
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
            }

            Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
            {
                Return (LPSS) /* \_SB_.C001.LPSS */
            }

            Name (LPSS, Package (0x10)
            {
                Package (0x06)
                {
                    FREQ, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0103, 
                    0x03
                }, 

                Package (0x06)
                {
                    0x07D0, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x03, 
                    0x03
                }, 

                Package (0x06)
                {
                    0x0785, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0104, 
                    0x04
                }, 

                Package (0x06)
                {
                    0x06D6, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x04, 
                    0x04
                }, 

                Package (0x06)
                {
                    0x0672, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0105, 
                    0x05
                }, 

                Package (0x06)
                {
                    0x05DC, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x05, 
                    0x05
                }, 

                Package (0x06)
                {
                    0x055F, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0106, 
                    0x06
                }, 

                Package (0x06)
                {
                    0x04E2, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x06, 
                    0x06
                }, 

                Package (0x06)
                {
                    0x044C, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0107, 
                    0x07
                }, 

                Package (0x06)
                {
                    0x03E8, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x07, 
                    0x07
                }, 

                Package (0x06)
                {
                    0x0339, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0108, 
                    0x08
                }, 

                Package (0x06)
                {
                    0x02EE, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x08, 
                    0x08
                }, 

                Package (0x06)
                {
                    0x0226, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0109, 
                    0x09
                }, 

                Package (0x06)
                {
                    0x01F4, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x09, 
                    0x09
                }, 

                Package (0x06)
                {
                    0x0113, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x010A, 
                    0x0A
                }, 

                Package (0x06)
                {
                    0xFA, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0A, 
                    0x0A
                }
            })
        }

        Device (C002)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_PXM, Zero)  // _PXM: Device Proximity
            Name (_STA, 0x0F)  // _STA: Status
            Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
            {
                Return (Zero)
            }

            Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
            {
                Return (Package (0x02)
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
            }

            Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
            {
                Return (LPSS) /* \_SB_.C002.LPSS */
            }

            Name (LPSS, Package (0x10)
            {
                Package (0x06)
                {
                    FREQ, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0103, 
                    0x03
                }, 

                Package (0x06)
                {
                    0x07D0, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x03, 
                    0x03
                }, 

                Package (0x06)
                {
                    0x0785, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0104, 
                    0x04
                }, 

                Package (0x06)
                {
                    0x06D6, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x04, 
                    0x04
                }, 

                Package (0x06)
                {
                    0x0672, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0105, 
                    0x05
                }, 

                Package (0x06)
                {
                    0x05DC, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x05, 
                    0x05
                }, 

                Package (0x06)
                {
                    0x055F, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0106, 
                    0x06
                }, 

                Package (0x06)
                {
                    0x04E2, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x06, 
                    0x06
                }, 

                Package (0x06)
                {
                    0x044C, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0107, 
                    0x07
                }, 

                Package (0x06)
                {
                    0x03E8, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x07, 
                    0x07
                }, 

                Package (0x06)
                {
                    0x0339, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0108, 
                    0x08
                }, 

                Package (0x06)
                {
                    0x02EE, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x08, 
                    0x08
                }, 

                Package (0x06)
                {
                    0x0226, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0109, 
                    0x09
                }, 

                Package (0x06)
                {
                    0x01F4, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x09, 
                    0x09
                }, 

                Package (0x06)
                {
                    0x0113, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x010A, 
                    0x0A
                }, 

                Package (0x06)
                {
                    0xFA, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0A, 
                    0x0A
                }
            })
        }

        Device (C003)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_PXM, Zero)  // _PXM: Device Proximity
            Name (_STA, 0x0F)  // _STA: Status
            Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
            {
                Return (Zero)
            }

            Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
            {
                Return (Package (0x02)
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
            }

            Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
            {
                Return (LPSS) /* \_SB_.C003.LPSS */
            }

            Name (LPSS, Package (0x10)
            {
                Package (0x06)
                {
                    FREQ, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0103, 
                    0x03
                }, 

                Package (0x06)
                {
                    0x07D0, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x03, 
                    0x03
                }, 

                Package (0x06)
                {
                    0x0785, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0104, 
                    0x04
                }, 

                Package (0x06)
                {
                    0x06D6, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x04, 
                    0x04
                }, 

                Package (0x06)
                {
                    0x0672, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0105, 
                    0x05
                }, 

                Package (0x06)
                {
                    0x05DC, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x05, 
                    0x05
                }, 

                Package (0x06)
                {
                    0x055F, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0106, 
                    0x06
                }, 

                Package (0x06)
                {
                    0x04E2, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x06, 
                    0x06
                }, 

                Package (0x06)
                {
                    0x044C, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0107, 
                    0x07
                }, 

                Package (0x06)
                {
                    0x03E8, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x07, 
                    0x07
                }, 

                Package (0x06)
                {
                    0x0339, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0108, 
                    0x08
                }, 

                Package (0x06)
                {
                    0x02EE, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x08, 
                    0x08
                }, 

                Package (0x06)
                {
                    0x0226, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0109, 
                    0x09
                }, 

                Package (0x06)
                {
                    0x01F4, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x09, 
                    0x09
                }, 

                Package (0x06)
                {
                    0x0113, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x010A, 
                    0x0A
                }, 

                Package (0x06)
                {
                    0xFA, 
                    0x3A98, 
                    0x4E20, 
                    0x4E20, 
                    0x0A, 
                    0x0A
                }
            })
        }
    }

    Scope (_SB)
    {
        Device (GPO0)
        {
            Name (_HID, "LOON0002")  // _HID: Hardware ID
            Name (_ADR, Zero)  // _ADR: Address
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x00000000100E0000, // Range Minimum
                    0x00000000100E0BFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000C00, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x0000007C,
                    0x0000007D,
                    0x0000007E,
                    0x0000007F,
                    0x0000007B,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x06)
                {
                    Package (0x02)
                    {
                        "conf_offset", 
                        0x0800
                    }, 

                    Package (0x02)
                    {
                        "out_offset", 
                        0x0900
                    }, 

                    Package (0x02)
                    {
                        "in_offset", 
                        0x0A00
                    }, 

                    Package (0x02)
                    {
                        "gpio_base", 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        "ngpios", 
                        0x39
                    }, 

                    Package (0x02)
                    {
                        "gsi_idx_map", 
                        Package (0x39)
                        {
                            Zero, 
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04, 
                            0x04
                        }
                    }
                }
            })
        }

        Device (COMA)
        {
            Name (_HID, "PNP0501" /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x000000001FE001E0, // Range Minimum
                    0x000000001FE001E7, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000008, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x0000001A,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        0x05F5E100
                    }
                }
            })
        }

        Device (COMB)
        {
            Name (_HID, "PNP0501" /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010080000, // Range Minimum
                    0x00000000100800FF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000100, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000048,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        0x02FAF080
                    }
                }
            })
        }

        Device (COMC)
        {
            Name (_HID, "PNP0501" /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010080100, // Range Minimum
                    0x00000000100801FF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000100, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000048,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        0x02FAF080
                    }
                }
            })
        }

        Device (COMD)
        {
            Name (_HID, "PNP0501" /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010080200, // Range Minimum
                    0x00000000100802FF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000100, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000048,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        0x02FAF080
                    }
                }
            })
        }

        Device (COME)
        {
            Name (_HID, "PNP0501" /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010080300, // Range Minimum
                    0x00000000100803FF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000100, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000048,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        0x02FAF080
                    }
                }
            })
        }

        Device (RTC)
        {
            Name (_HID, "LOON0001")  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x00000000100D0100, // Range Minimum
                    0x00000000100D01FF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000100, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000074,
                }
            })
        }

        Device (I2C0)
        {
            Name (_HID, "LOON0004")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010090000, // Range Minimum
                    0x0000000010090007, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000008, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000049,
                }
            })
        }

        Device (I2C1)
        {
            Name (_HID, "LOON0004")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010090100, // Range Minimum
                    0x0000000010090107, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000008, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000049,
                }
            })
        }

        Device (I2C2)
        {
            Name (_HID, "LOON0004")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010090200, // Range Minimum
                    0x0000000010090207, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000008, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000049,
                }
            })
        }

        Device (I2C3)
        {
            Name (_HID, "LOON0004")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010090300, // Range Minimum
                    0x0000000010090307, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000008, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000049,
                }
            })
        }

        Device (I2C4)
        {
            Name (_HID, "LOON0004")  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010090400, // Range Minimum
                    0x0000000010090407, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000008, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000049,
                }
            })
        }

        Device (I2C5)
        {
            Name (_HID, "LOON0004")  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000010090500, // Range Minimum
                    0x0000000010090507, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000008, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000049,
                }
            })
        }

        Device (PWM0)
        {
            Name (_HID, "LOON0006")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x00000000100A0000, // Range Minimum
                    0x00000000100A000F, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000010, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000058,
                }
            })
        }

        Device (PWM1)
        {
            Name (_HID, "LOON0006")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x00000000100A0100, // Range Minimum
                    0x00000000100A010F, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000010, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000059,
                }
            })
        }

        Device (PWM2)
        {
            Name (_HID, "LOON0006")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x00000000100A0200, // Range Minimum
                    0x00000000100A020F, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000010, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x0000005A,
                }
            })
        }

        Device (PWM3)
        {
            Name (_HID, "LOON0006")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x00000000100A0300, // Range Minimum
                    0x00000000100A030F, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000010, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x0000005B,
                }
            })
        }

        Device (NIPM)
        {
            Name (_HID, "IPI0001")  // _HID: Hardware ID
            Name (_STR, Unicode ("IPMI_KCS"))  // _STR: Description String
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0CA2,             // Range Minimum
                        0x0CA2,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0CA3,             // Range Minimum
                        0x0CA3,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                })
            }

            Method (_IFT, 0, NotSerialized)  // _IFT: IPMI Interface Type
            {
                Return (One)
            }

            Method (_SRV, 0, NotSerialized)  // _SRV: IPMI Spec Revision
            {
                Return (0x0200)
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (THM0)
        {
            Name (_TZP, 0x012C)  // _TZP: Thermal Zone Polling
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Local0 = \_SB.THSE
                Local1 = CCNT (Local0)
                Local3 = \_SB.SRAM
                If ((Local3 == 0x0005000180150040))
                {
                    Return (C2K (Local1))
                }
                Else
                {
                    Return (C2K ((Local1 - 0x0A)))
                }
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (C2K (0x60))
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                Return (Package (0x04)
                {
                    \_SB.C000, 
                    \_SB.C001, 
                    \_SB.C002, 
                    \_SB.C003
                })
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (C2K (0x46))
            }

            Name (_TC1, Zero)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x32)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x012C)  // _TSP: Thermal Sampling Period
        }

        Method (CCNT, 1, NotSerialized)
        {
            Local0 = ((Arg0 & 0xFFFF) * 0x02DB)
            Local1 = (Local0 / 0x4000)
            Local2 = (Local1 - 0x0111)
            Return (Local2)
        }

        Method (C2K, 1, NotSerialized)
        {
            Local0 = ((Arg0 * 0x0A) + 0x0AAC)
            If ((Local0 <= 0x0AAC))
            {
                Local0 = 0x0BB8
            }

            If ((Local0 > 0x0FAC))
            {
                Local0 = 0x0BB8
            }

            Return (Local0)
        }
    }

    Scope (_SB.PCI0)
    {
        Name (PCIG, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */)
        Method (PCID, 4, Serialized)
        {
            If ((Arg0 == PCIG))
            {
                If ((Arg1 >= 0x03))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (0x02)
                        {
                             0x01, 0x03                                       // ..
                        })
                    }

                    If ((Arg2 == 0x09))
                    {
                        Return (Package (0x05)
                        {
                            0xC350, 
                            Ones, 
                            Ones, 
                            0xC350, 
                            Ones
                        })
                    }
                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        0x05, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        0x06, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        0x07, 
        Zero, 
        Zero
    })
    Name (SADR, 0x800000001C062494)
    Scope (_GPE)
    {
    }
}

