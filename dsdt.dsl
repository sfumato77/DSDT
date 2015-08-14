/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140214-32 [Mar 29 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of dsdt.dat, Thu Jul  2 02:50:39 2015
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00010AA1 (68257)
 *     Revision         0x02
 *     Checksum         0xFF
 *     OEM ID           "INSYDE"
 *     OEM Table ID     "INSYDE"
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("dsdt.aml", "DSDT", 2, "INSYDE", "INSYDE", 0x00000003)
{
    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but additional ACPI tables to resolve these externals
     * were not specified. This resulting disassembler output file may not
     * compile because the disassembler did not know how many arguments
     * to assign to these methods. To specify the tables needed to resolve
     * external control method references, the -e option can be used to
     * specify the filenames. Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     */
    External (_SB_.PCI0.LPCB.TPM_.PTS_, MethodObj)    // Warning: Unresolved Method, guessing 1 arguments (may be incorrect, see warning above)
    External (NDN3, MethodObj)    // Warning: Unresolved Method, guessing 1 arguments (may be incorrect, see warning above)

    External (_PR_.CPU0._PPC)
    External (_SB_.DPTF)
    External (CFGD)
    External (DPTF)
    External (PDC0)
    External (PDC1)
    External (PDC2)
    External (PDC3)
    External (TCH1)
    External (TCH2)

    Method (ADBG, 1, Serialized)
    {
        Return (Zero)
    }

    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (SP1O, 0x4E)
    Name (PMBS, 0x0400)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PFDR, 0xFED03034)
    Name (PMCB, 0xFED03000)
    Name (PCLK, 0xFED03060)
    Name (PUNB, 0xFED05000)
    Name (IBAS, 0xFED08000)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x1000)
    Name (HPTB, 0xFED00000)
    Name (MCHB, 0xFED14000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x02)
    Name (DSLC, 0x03)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (PSSS, 0x67)
    Name (SOOT, 0x35)
    Name (ESCS, 0x6A)
    Name (SDGV, 0x1C)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (FTBL, 0x04)
    OperationRegion (GNVS, SystemMemory, 0x7CC66A90, 0x0335)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        Offset (0x15), 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        BNUM,   8, 
        B0SC,   8, 
        B1SC,   8, 
        B2SC,   8, 
        B0SS,   8, 
        B1SS,   8, 
        B2SS,   8, 
        Offset (0x28), 
        APIC,   8, 
        MPEN,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        W381,   8, 
        NPCE,   8, 
        Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IDMM,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        Offset (0x14C), 
        USEL,   8, 
        PU1E,   8, 
        PU2E,   8, 
        LPE0,   32, 
        LPE1,   32, 
        LPE2,   32, 
        ACST,   8, 
        BTST,   8, 
        PFLV,   8, 
        Offset (0x15F), 
        AOAC,   8, 
        XHCI,   8, 
        PMEN,   8, 
        LPEE,   8, 
        ISPA,   32, 
        ISPD,   8, 
        PCIB,   32, 
        PCIT,   32, 
        D10A,   32, 
        D10L,   32, 
        D11A,   32, 
        D11L,   32, 
        P10A,   32, 
        P10L,   32, 
        P11A,   32, 
        P11L,   32, 
        P20A,   32, 
        P20L,   32, 
        P21A,   32, 
        P21L,   32, 
        U10A,   32, 
        U10L,   32, 
        U11A,   32, 
        U11L,   32, 
        U20A,   32, 
        U20L,   32, 
        U21A,   32, 
        U21L,   32, 
        SP0A,   32, 
        SP0L,   32, 
        SP1A,   32, 
        SP1L,   32, 
        D20A,   32, 
        D20L,   32, 
        D21A,   32, 
        D21L,   32, 
        I10A,   32, 
        I10L,   32, 
        I11A,   32, 
        I11L,   32, 
        I20A,   32, 
        I20L,   32, 
        I21A,   32, 
        I21L,   32, 
        I30A,   32, 
        I30L,   32, 
        I31A,   32, 
        I31L,   32, 
        I40A,   32, 
        I40L,   32, 
        I41A,   32, 
        I41L,   32, 
        I50A,   32, 
        I50L,   32, 
        I51A,   32, 
        I51L,   32, 
        I60A,   32, 
        I60L,   32, 
        I61A,   32, 
        I61L,   32, 
        I70A,   32, 
        I70L,   32, 
        I71A,   32, 
        I71L,   32, 
        EM0A,   32, 
        EM0L,   32, 
        EM1A,   32, 
        EM1L,   32, 
        SI0A,   32, 
        SI0L,   32, 
        SI1A,   32, 
        SI1L,   32, 
        SD0A,   32, 
        SD0L,   32, 
        SD1A,   32, 
        SD1L,   32, 
        MH0A,   32, 
        MH0L,   32, 
        MH1A,   32, 
        MH1L,   32, 
        OSSL,   8, 
        Offset (0x294), 
        DPTE,   8, 
        THM0,   8, 
        THM1,   8, 
        THM2,   8, 
        THM3,   8, 
        THM4,   8, 
        CHGR,   8, 
        DDSP,   8, 
        DSOC,   8, 
        DPSR,   8, 
        DPCT,   32, 
        DPPT,   32, 
        DGC0,   32, 
        DGP0,   32, 
        DGC1,   32, 
        DGP1,   32, 
        DGC2,   32, 
        DGP2,   32, 
        DGC3,   32, 
        DGP3,   32, 
        DGC4,   32, 
        DGP4,   32, 
        DLPM,   8, 
        DSC0,   32, 
        DSC1,   32, 
        DSC2,   32, 
        DSC3,   32, 
        DSC4,   32, 
        DDBG,   8, 
        LPOE,   32, 
        LPPS,   32, 
        LPST,   32, 
        LPPC,   32, 
        LPPF,   32, 
        DPME,   8, 
        BCSL,   8, 
        NFCS,   8, 
        Offset (0x2FC), 
        TPMA,   32, 
        TPML,   32, 
        ITSA,   8, 
        S0IX,   8, 
        SDMD,   8, 
        EMVR,   8, 
        BMBD,   32, 
        USBM,   8, 
        BDID,   8, 
        FBID,   8, 
        OTGM,   8, 
        STEP,   8, 
        SOCS,   8, 
        AMTE,   8, 
        SCPE,   8, 
        SARE,   8, 
        PSSD,   8, 
        EDPV,   8, 
        DIDX,   32, 
        PAVB,   32, 
        PAVL,   32, 
        PMID,   8, 
        PMIS,   8, 
        ADOS,   8, 
        MIPS,   8, 
        WIFS,   8, 
        BTSL,   8, 
        GPSS,   8, 
        RCAS,   8, 
        FCAS,   8, 
        CHRS,   8, 
        FUES,   8, 
        ALSS,   8, 
        GYRS,   8, 
        ACCS,   8, 
        SARS,   8, 
        VTSP,   16, 
        IUCE,   8
    }

    Scope (_SB)
    {
        Device (RTC)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
            })
        }

        Device (HPET)
        {
            Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000400,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000008,
                    }
                })
                Return (RBUF)
            }
        }

        Name (PR00, Package (0x12)
        {
            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x11)
        {
            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR01, Package (0x10)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKG, 
                Zero
            }
        })
        Name (AR01, Package (0x10)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x16
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            Device (VLVC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (HBUS, PCI_Config, Zero, 0xFF)
                Field (HBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0), 
                    SMCR,   32, 
                    SMDR,   32, 
                    MCRX,   32
                }

                Method (RMBR, 2, Serialized)
                {
                    Or (ShiftLeft (Arg0, 0x10), ShiftLeft (Arg1, 0x08), Local0)
                    Or (0x100000F0, Local0, SMCR)
                    Return (SMDR)
                }

                Method (WMBR, 3, Serialized)
                {
                    Store (Arg2, SMDR)
                    Or (ShiftLeft (Arg0, 0x10), ShiftLeft (Arg1, 0x08), Local0)
                    Or (0x110000F0, Local0, SMCR)
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (TPMP)
                {
                    CreateDWordField (RES0, \_SB.PCI0._Y00._LEN, TPML)  // _LEN: Length
                    Store (0x1000, TPML)
                }

                CreateDWordField (RES0, \_SB.PCI0._Y01._MIN, ISMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._MAX, ISMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._LEN, ISLN)  // _LEN: Length
                If (LEqual (ISPD, One))
                {
                    Store (ISPA, ISMN)
                    Add (ISMN, ISLN, ISMX)
                    Subtract (ISMX, One, ISMX)
                }
                Else
                {
                    Store (Zero, ISMN)
                    Store (Zero, ISMX)
                    Store (Zero, ISLN)
                }

                CreateDWordField (RES0, \_SB.PCI0._Y02._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._LEN, M1LN)  // _LEN: Length
                And (BMBD, 0xFF000000, M1MN)
                Store (PCIT, M1MX)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                Subtract (M1MX, One, M1MX)
                CreateDWordField (RES0, \_SB.PCI0._Y03._MIN, GSMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._MAX, GSMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._LEN, GSLN)  // _LEN: Length
                Store (^GFX0.GSTM, GSMN)
                ShiftLeft (^GFX0.GUMA, 0x19, GSLN)
                Add (GSMN, GSLN, GSMX)
                Subtract (GSMX, One, GSMX)
                Return (RES0)
            }

            Name (RES0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0077,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x006F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0070,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0078,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0C80,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7A000000,         // Range Minimum
                    0x7A3FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00400000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7C000000,         // Range Minimum
                    0x7FFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x04000000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x60000000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED40FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00001000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
            })
            Name (GUID, Buffer (0x10)
            {
                /* 0000 */   0x5B, 0x4D, 0xDB, 0x33, 0xF7, 0x1F, 0x1C, 0x40,
                /* 0008 */   0x96, 0x57, 0x74, 0x41, 0xC0, 0x3D, 0xD7, 0x66
            })
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (LAnd (LEqual (Arg0, GUID), NEXP))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (Not (And (CDW1, One)))
                    {
                        If (And (CTRL, 0x02))
                        {
                            NHPG ()
                        }

                        If (And (CTRL, 0x04))
                        {
                            NPME ()
                        }
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Store (CTRL, OSCC)
                    Return (Local0)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Local0)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (ILBR, SystemMemory, IBAS, 0x8C)
                    Field (ILBR, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0x88), 
                            ,   3, 
                        UI3E,   1, 
                        UI4E,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PBRC, 0x80, PBRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PCRC, 0x80, PCRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PDRC, 0x80, PDRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PERC, 0x80, PERC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PFRC, 0x80, PFRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PGRC, 0x80, PGRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PHRC, 0x80, PHRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, Zero, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    SRID,   8, 
                    Offset (0x80), 
                    C1EN,   1, 
                    Offset (0x84)
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x0600,             // Range Minimum
                            0x0600,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (IUR3)
                {
                    Name (_HID, EisaId ("PNP0501"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (USEL, Zero))
                        {
                            If (LEqual (PU1E, One))
                            {
                                Store (One, UI3E)
                                Store (One, UI4E)
                                Store (One, C1EN)
                                Return (0x0F)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (Zero, UI3E)
                        Store (Zero, UI4E)
                        Store (Zero, C1EN)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        })
                        Name (BUF1, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        })
                        If (LLessEqual (SRID, 0x04))
                        {
                            Return (BUF0)
                        }
                        Else
                        {
                            Return (BUF1)
                        }
                    }
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8, 
                    Offset (0x02), 
                    Offset (0x03), 
                    Offset (0x04), 
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (LEqual (PKBD, 0xFF), LEqual (PKBC, 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

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
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F13"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (LEqual (PKBD, 0xFF), LEqual (PKBC, 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                }
            }
        }
    }

    Scope (\)
    {
        OperationRegion (PMIO, SystemIO, PMBS, 0x46)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            PWBS,   1, 
            Offset (0x20), 
                ,   13, 
            PMEB,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
                ,   4, 
            PSCI,   1, 
            SCIS,   1
        }

        OperationRegion (PMCR, SystemMemory, PFDR, 0x04)
        Field (PMCR, DWordAcc, Lock, Preserve)
        {
            L10D,   1, 
            L11D,   1, 
            L12D,   1, 
            L13D,   1, 
            L14D,   1, 
            L15D,   1, 
            Offset (0x01), 
            SD1D,   1, 
            SD2D,   1, 
            SD3D,   1, 
            HSID,   1, 
                ,   1, 
            LPED,   1, 
            OTGD,   1, 
            Offset (0x02), 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            L20D,   1, 
            L21D,   1, 
            L22D,   1, 
            L23D,   1, 
            L24D,   1, 
            L25D,   1, 
            L26D,   1, 
            L27D,   1
        }

        OperationRegion (CLKC, SystemMemory, PCLK, 0x18)
        Field (CLKC, DWordAcc, Lock, Preserve)
        {
            CKC0,   2, 
            CKF0,   1, 
            Offset (0x04), 
            CKC1,   2, 
            CKF1,   1, 
            Offset (0x08), 
            CKC2,   2, 
            CKF2,   1, 
            Offset (0x0C), 
            CKC3,   2, 
            CKF3,   1, 
            Offset (0x10), 
            CKC4,   2, 
            CKF4,   1, 
            Offset (0x14), 
            CKC5,   2, 
            CKF5,   1, 
            Offset (0x18)
        }
    }

    Scope (_SB)
    {
        Device (LPEA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F28")  // _HID: Hardware ID
            Name (_CID, "80860F28")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Low Power Audio Controller - 80860F28")  // _DDN: DOS Device Name
            Name (_SUB, "80867270")  // _SUB: Subsystem ID
            Name (_UID, One)  // _UID: Unique ID
            Name (ADEP, Package (0x01)
            {
                ^I2C2.TTLV
            })
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                ^I2C2.RTEK
            })
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PLPE
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LAnd (LEqual (LPEE, 0x02), LEqual (LPED, Zero)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x12345678,         // Address Base
                    0x00200000,         // Address Length
                    _Y04)
                Memory32Fixed (ReadWrite,
                    0xFE830000,         // Address Base
                    0x00001000,         // Address Length
                    _Y05)
                Memory32Fixed (ReadWrite,
                    0x55AA55AA,         // Address Base
                    0x00200000,         // Address Length
                    _Y06)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001D,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000018,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000019,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001A,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001B,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001C,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.LPEA._Y04._BAS, B0BA)  // _BAS: Base Address
                Store (LPE0, B0BA)
                CreateDWordField (RBUF, \_SB.LPEA._Y05._BAS, B1BA)  // _BAS: Base Address
                Store (LPE1, B1BA)
                CreateDWordField (RBUF, \_SB.LPEA._Y06._BAS, B2BA)  // _BAS: Base Address
                Store (LPE2, B2BA)
                Return (RBUF)
            }

            OperationRegion (KEYS, SystemMemory, LPE1, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (PLPE, 0x05, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (One)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    And (PSAT, 0xFFFFFFFC, PSAT)
                    Store (PSAT, Local0)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Or (PSAT, 0x03, PSAT)
                    Store (PSAT, Local0)
                }
            }

            Device (ADMA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ADMA0F28")  // _HID: Hardware ID
                Name (_CID, "ADMA0F28")  // _CID: Compatible ID
                Name (_DDN, "Intel(R) Audio  DMA0 - DMA0F28")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF498000,         // Address Base
                            0x00001000,         // Address Length
                            _Y07)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x00000018,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.ADMA._CRS._Y07._BAS, B0BA)  // _BAS: Base Address
                    Store (LPE0, B0BA)
                    Return (RBUF)
                }
            }

            Device (SSP1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SSPX0000")  // _HID: Hardware ID
                Name (_CID, "SSPX0000")  // _CID: Compatible ID
                Name (_DDN, "Intel(R) SSP Device")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF4A1000,         // Address Base
                            0x00001000,         // Address Length
                            _Y08)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x0000001B,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.SSP1._CRS._Y08._BAS, B0BA)  // _BAS: Base Address
                    Add (LPE0, 0x000A1000, B0BA)
                    Return (RBUF)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x26, 0x3F, 0x6A, 0x88, 0x0C, 0x60, 0x01, 0x44,
                                /* 0008 */   0xB7, 0xB1, 0x01, 0xE9, 0xC2, 0xE7, 0xE7, 0x7E
                            }))
                    {
                        Return ("BLUET")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x3E, 0xF8, 0xD3, 0x30, 0xE1, 0x2E, 0xF0, 0x4B,
                                /* 0008 */   0x86, 0xE9, 0xF6, 0x9D, 0xED, 0x28, 0x87, 0xEE
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x00, 0x14, 0x8B, 0x20, 0xC8, 0xF7, 0x25, 0x43,
                                /* 0008 */   0xAB, 0x32, 0x53, 0xCD, 0x79, 0xB7, 0xD0, 0xA6
                            }))
                    {
                        Return (0xFF2A1000)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x60, 0x7C, 0xE3, 0xE6, 0x8B, 0xE7, 0xBD, 0x4F,
                                /* 0008 */   0xBD, 0x26, 0x5B, 0xD3, 0x66, 0x7A, 0x6C, 0x9A
                            }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg1), _T_0)
                            If (LEqual (_T_0, 0x08))
                            {
                                Return (Buffer (0x05)
                                {
                                     0x00, 0x00, 0x00, 0x00, 0x01
                                })
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x10))
                                {
                                    Return (Buffer (0x05)
                                    {
                                         0x06, 0x02, 0x00, 0x0E, 0x10
                                    })
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x30))
                                    {
                                        Return (Buffer (0x05)
                                        {
                                             0x06, 0x02, 0x00, 0x0E, 0x10
                                        })
                                    }
                                }
                            }

                            Break
                        }

                        Return ("ERR-T")
                    }

                    Return ("ERR-M")
                }
            }
        }

        Device (TIMC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "TIMC0F28")  // _HID: Hardware ID
            Name (_CID, "TIMC0F28")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Audio Machine Driver - TIMC0F28")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                GPO2, 
                ^I2C2.TTLV
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001B
                        }
                })
                Return (RBUF)
            }
        }

        Device (AMCR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "AMCR0F28")  // _HID: Hardware ID
            Name (_CID, "AMCR0F28")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Audio Machine Driver - AMCR0F28")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                GPO2, 
                ^I2C2.RTEK
            })
            Name (_STA, Zero)  // _STA: Status
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001B
                        }
                })
                Return (RBUF)
            }
        }

        Device (HAD)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "HAD0F28")  // _HID: Hardware ID
            Name (_CID, "HAD0F28")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HDMI Audio Driver - HAD")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00065800,         // Address Base
                        0x00000140,         // Address Length
                        )
                })
                Return (RBUF)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (XHC1)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            Name (_DDN, "Baytrail XHCI controller (CCG core/Host only)")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_STR, Unicode ("Baytrail XHCI controller (CCG core/Host only)"))  // _STR: Description String
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (MSET, Zero)
            Name (DDST, Zero)
            OperationRegion (PCSL, SystemMemory, 0xE00A0074, One)
            Field (PCSL, ByteAcc, NoLock, WriteAsZeros)
            {
                PMPS,   2
            }

            OperationRegion (PCSH, SystemMemory, 0xE00A0075, One)
            Field (PCSH, ByteAcc, NoLock, Preserve)
            {
                PMCH,   8
            }

            OperationRegion (XMSE, SystemMemory, 0xE00A0000, 0x0100)
            Field (XMSE, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                    ,   1, 
                CMSE,   1, 
                Offset (0x10), 
                BAR0,   32, 
                Offset (0x74), 
                PMCS,   16, 
                Offset (0xB0), 
                    ,   13, 
                PHY2,   2, 
                    ,   13, 
                USHP,   1, 
                    ,   1, 
                SCFG,   1
            }

            Method (PWOF, 0, Serialized)
            {
                Store (One, SCFG)
            }

            Method (PWON, 0, Serialized)
            {
                Store (Zero, SCFG)
            }

            OperationRegion (XPRT, SystemMemory, Add (PEBS, 0x000A0000), 0x0100)
            Field (XPRT, AnyAcc, NoLock, Preserve)
            {
                DVID,   16, 
                Offset (0x74), 
                D0D3,   2, 
                Offset (0x75), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0xB0), 
                    ,   13, 
                MB13,   1, 
                MB14,   1, 
                Offset (0xB4), 
                Offset (0xD0), 
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            OperationRegion (XHCP, SystemMemory, Add (PEBS, 0x000A0000), 0x0100)
            Field (XHCP, AnyAcc, Lock, Preserve)
            {
                Offset (0x04), 
                PDBM,   16, 
                Offset (0x10), 
                MEMB,   32
            }

            Name (PCHS, Zero)
            Name (SRMB, 0x90800000)
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                ADBG ("XHC D0")
                P8XH (Zero, 0xA0)
                If (LEqual (DVID, 0xFFFF))
                {
                    Return (Zero)
                }

                And (MEMB, 0xFFFFFFF0, SRMB)
                Store (MEMB, Local2)
                Store (PDBM, Local1)
                And (PDBM, 0xFFFFFFFFFFFFFFF9, PDBM)
                Store (SRMB, MEMB)
                Or (PDBM, 0x02, PDBM)
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x510), 
                    R510,   32, 
                    Offset (0x520), 
                    R520,   32, 
                    Offset (0x530), 
                    R530,   32, 
                    Offset (0x540), 
                    R540,   32, 
                    Offset (0x8058), 
                    Offset (0x8059), 
                    CDES,   1, 
                    Offset (0x805A), 
                    STSP,   1, 
                        ,   3, 
                    CFEC,   1, 
                    Offset (0x8060), 
                        ,   25, 
                    EPRE,   1, 
                    Offset (0x8094), 
                        ,   14, 
                    CMMF,   1, 
                        ,   6, 
                    ESSP,   1, 
                        ,   1, 
                    DAPA,   1, 
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x80FC), 
                        ,   25, 
                    PPL1,   1, 
                    Offset (0x8110), 
                        ,   1, 
                    CRNC,   1, 
                    Offset (0x8111), 
                    EPTD,   1, 
                        ,   2, 
                    HTPP,   1, 
                        ,   8, 
                    TRMC,   1, 
                    Offset (0x8140), 
                    MIDS,   12, 
                    AWPC,   12, 
                    EIHR,   8, 
                        ,   6, 
                    SSII,   1, 
                    SSIO,   1, 
                    HSII,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x8164), 
                    ETBC,   1, 
                    ERBC,   1, 
                    ESAI,   1, 
                    ETMA,   1, 
                    EOAI,   1, 
                    EIAI,   1, 
                    TTEA,   1, 
                    ECMA,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1, 
                    Offset (0x8188), 
                    Offset (0x818B), 
                    FIDD,   1, 
                        ,   1, 
                    FTSS,   1
                }

                Store (D0D3, Local3)
                If (LEqual (Local3, 0x03))
                {
                    Store (Zero, D0D3)
                    Sleep (0x0A)
                }

                If (LEqual (PCHS, 0x02))
                {
                    Store (Zero, MB13)
                    Store (Zero, MB14)
                    Store (Zero, CLK0)
                    Store (Zero, CLK1)
                }

                Store (One, CLK2)
                Store (One, CDES)
                Store (One, STSP)
                Store (Zero, CFEC)
                Store (One, EPRE)
                Store (One, DAPA)
                Store (One, ESSP)
                Store (One, CMMF)
                Store (One, PPL1)
                Store (Zero, CRNC)
                Store (Zero, EPTD)
                Store (One, HTPP)
                Store (One, TRMC)
                Store (0x3C, MIDS)
                Store (0x0F, AWPC)
                Store (0xFF, EIHR)
                Store (One, SSII)
                Store (One, SSIO)
                Store (One, HSII)
                Store (One, ERBC)
                Store (One, ETBC)
                Store (One, ESAI)
                Store (One, ETMA)
                Store (One, EOAI)
                Store (One, EIAI)
                Store (One, TTEA)
                Store (One, ECMA)
                Store (One, FIDD)
                Store (One, FTSS)
                Store (Zero, USHP)
                If (LEqual (PCHS, 0x02))
                {
                    While (LOr (LOr (LEqual (And (R510, 0x03FB), 0x02E0), LEqual (
                        And (R520, 0x03FB), 0x02E0)), LOr (LEqual (And (R530, 0x03FB), 
                        0x02E0), LEqual (And (R540, 0x03FB), 0x02E0))))
                    {
                        Stall (0x32)
                    }

                    Store (R510, Local0)
                    If (LEqual (And (Local0, 0x000203FB), 0x02A0))
                    {
                        Or (Local0, 0x80000000, R510)
                        While (LEqual (And (R510, 0x00180000), Zero))
                        {
                            Stall (0x32)
                        }

                        And (R510, 0xFFFFFFFFFFFFFFFD, Local0)
                        Or (Local0, 0x00FE0000, R510)
                    }

                    Store (R520, Local0)
                    If (LEqual (And (Local0, 0x000203FB), 0x02A0))
                    {
                        Or (Local0, 0x80000000, R520)
                        While (LEqual (And (R520, 0x00180000), Zero))
                        {
                            Stall (0x32)
                        }

                        And (R520, 0xFFFFFFFFFFFFFFFD, Local0)
                        Or (Local0, 0x00FE0000, R520)
                    }

                    Store (R530, Local0)
                    If (LEqual (And (Local0, 0x000203FB), 0x02A0))
                    {
                        Or (Local0, 0x80000000, R530)
                        While (LEqual (And (R530, 0x00180000), Zero))
                        {
                            Stall (0x32)
                        }

                        And (R530, 0xFFFFFFFFFFFFFFFD, Local0)
                        Or (Local0, 0x00FE0000, R530)
                    }

                    Store (R540, Local0)
                    If (LEqual (And (Local0, 0x000203FB), 0x02A0))
                    {
                        Or (Local0, 0x80000000, R540)
                        While (LEqual (And (R540, 0x00180000), Zero))
                        {
                            Stall (0x32)
                        }

                        And (R540, 0xFFFFFFFFFFFFFFFD, Local0)
                        Or (Local0, 0x00FE0000, R540)
                    }

                    Store (One, AX15)
                }

                If (LEqual (Local3, 0x03))
                {
                    ADBG ("PS0->D3")
                    P8XH (Zero, 0xA1)
                    Store (0x03, D0D3)
                }
                Else
                {
                    P8XH (Zero, 0xA2)
                }

                And (PDBM, 0xFFFFFFFFFFFFFFFD, PDBM)
                Store (Local2, MEMB)
                Store (Local1, PDBM)
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                ADBG ("XHC D3")
                P8XH (Zero, 0xB0)
                If (LEqual (DVID, 0xFFFF))
                {
                    Return (Zero)
                }

                And (MEMB, 0xFFFFFFF0, SRMB)
                Store (MEMB, Local2)
                Store (PDBM, Local1)
                And (PDBM, 0xFFFFFFFFFFFFFFF9, PDBM)
                Store (SRMB, MEMB)
                Or (PDBM, 0x02, PDBM)
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1, 
                    Offset (0x8170)
                }

                Store (D0D3, Local3)
                If (LEqual (Local3, 0x03))
                {
                    Store (Zero, D0D3)
                }

                If (LEqual (PCHS, 0x02))
                {
                    Store (One, MB13)
                    Store (One, MB14)
                    Store (One, CLK0)
                    Store (One, CLK1)
                }

                Store (Zero, CLK2)
                If (LEqual (PCHS, 0x02))
                {
                    Store (Zero, AX15)
                }

                If (LEqual (PMEE, One))
                {
                    Store (One, USHP)
                }

                If (LEqual (Local3, 0x03))
                {
                    ADBG ("PS3->D3")
                    P8XH (Zero, 0xB1)
                    Store (0x03, D0D3)
                }
                Else
                {
                    P8XH (Zero, 0xB2)
                }

                And (PDBM, 0xFFFFFFFFFFFFFFFD, PDBM)
                Store (Local2, MEMB)
                Store (Local1, PDBM)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (XHCI, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (SSP1)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0x06, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x48, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                                /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                        Return (PLDP)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM11")
                        If (LEqual (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */   0x85, 0xE3, 0x2E, 0xCE, 0xE6, 0x00, 0xCB, 0x48,
                                    /* 0008 */   0x9F, 0x05, 0x2E, 0xDB, 0x92, 0x7C, 0x48, 0x99
                                }))
                        {
                            ADBG ("DSM12")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM13")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("SSP1 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("SSP1 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x06, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x49, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                                /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                        Return (PLDP)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM21")
                        If (LEqual (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */   0x85, 0xE3, 0x2E, 0xCE, 0xE6, 0x00, 0xCB, 0x48,
                                    /* 0008 */   0x9F, 0x05, 0x2E, 0xDB, 0x92, 0x7C, 0x48, 0x99
                                }))
                        {
                            ADBG ("DSM22")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM23")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HS01 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HS01 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (UPCR, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (LEqual (BDID, 0x02))
                        {
                            Return (UPCR)
                        }
                        Else
                        {
                            Return (UPCP)
                        }
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                        Name (PLDR, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x41, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                        If (LEqual (BDID, 0x02))
                        {
                            Return (PLDR)
                        }
                        Else
                        {
                            Return (PLDP)
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM31")
                        If (LEqual (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */   0x85, 0xE3, 0x2E, 0xCE, 0xE6, 0x00, 0xCB, 0x48,
                                    /* 0008 */   0x9F, 0x05, 0x2E, 0xDB, 0x92, 0x7C, 0x48, 0x99
                                }))
                        {
                            ADBG ("DSM32")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM33")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HS02 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HS02 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                        Return (PLDP)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM51")
                        If (LEqual (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */   0x85, 0xE3, 0x2E, 0xCE, 0xE6, 0x00, 0xCB, 0x48,
                                    /* 0008 */   0x9F, 0x05, 0x2E, 0xDB, 0x92, 0x7C, 0x48, 0x99
                                }))
                        {
                            ADBG ("DSM52")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM53")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HS04 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HS04 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HSC1)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                        Return (PLDP)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM61")
                        If (LEqual (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */   0x85, 0xE3, 0x2E, 0xCE, 0xE6, 0x00, 0xCB, 0x48,
                                    /* 0008 */   0x9F, 0x05, 0x2E, 0xDB, 0x92, 0x7C, 0x48, 0x99
                                }))
                        {
                            ADBG ("DSM62")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM63")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HSIC1 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HSIC1 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (One)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HSC2)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                        Return (PLDP)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM71")
                        If (LEqual (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */   0x85, 0xE3, 0x2E, 0xCE, 0xE6, 0x00, 0xCB, 0x48,
                                    /* 0008 */   0x9F, 0x05, 0x2E, 0xDB, 0x92, 0x7C, 0x48, 0x99
                                }))
                        {
                            ADBG ("DSM72")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM73")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HSIC2 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HSIC2 DSM called")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (One)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }
            }
        }

        Device (OTG1)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Name (_DDN, "Baytrail XHCI controller (Synopsys core/OTG)")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("Baytrail XHCI controller (Synopsys core/OTG)"))  // _STR: Description String
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            OperationRegion (GENR, PCI_Config, 0xA0, 0x10)
            Field (GENR, WordAcc, NoLock, Preserve)
            {
                    ,   18, 
                CPME,   1, 
                U2EN,   1, 
                U3EN,   1
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Store (One, CPME)
                Store (One, U2EN)
                Store (One, U3EN)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                Store (Zero, CPME)
                Store (Zero, U2EN)
                Store (Zero, U3EN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (OTGM, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (\_SB)
        {
            PowerResource (USBC, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (Ones, PWUC)
                }
                Else
                {
                    Store (Zero, PWUC)
                }
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            /*           Revision : 01     */
                            /*        IgnoreColor : 01     */
                            /*              Color : 000000 */
                            /*              Width : 0000   */
                            /*             Height : 0000   */
                            /*        UserVisible : 00     */
                            /*               Dock : 00     */
                            /*                Lid : 00     */
                            /*              Panel : 06     */
                            /*   VerticalPosition : 00     */
                            /* HorizontalPosition : 00     */
                            /*              Shape : 07     */
                            /*   GroupOrientation : 00     */
                            /*         GroupToken : 00     */
                            /*      GroupPosition : 00     */
                            /*                Bay : 00     */
                            /*          Ejectable : 00     */
                            /*  OspmEjectRequired : 00     */
                            /*      CabinetNumber : 00     */
                            /*     CardCageNumber : 00     */
                            /*          Reference : 00     */
                            /*           Rotation : 00     */
                            /*              Order : 00     */
                            /*     VerticalOffset : 0000   */
                            /*   HorizontalOffset : 0000   */
                        }
                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 04     */
                                /*   VerticalPosition : 03     */
                                /* HorizontalPosition : 00     */
                                /*              Shape : 07     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 04     */
                                /*   VerticalPosition : 03     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 07     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 04     */
                                /*   VerticalPosition : 03     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 07     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 04     */
                                /*   VerticalPosition : 03     */
                                /* HorizontalPosition : 02     */
                                /*              Shape : 07     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 02     */
                                /*              Shape : 07     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 02     */
                                /*              Shape : 07     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 02     */
                                /*              Shape : 07     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 02     */
                                /*              Shape : 07     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }
                }
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (USBR, PCI_Config, 0x54, 0x04)
            Field (USBR, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (XHCI, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }
        }

        Device (SEC0)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y09)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (LEqual (PAVP, 0x02))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SEC0._Y09._BAS, B0BA)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.PCI0.SEC0._Y09._LEN, B0LN)  // _LEN: Length
                    Store (PAVB, B0BA)
                    Store (PAVL, B0LN)
                    Return (RBUF)
                }

                Return (ResourceTemplate ()
                {
                })
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Name (_DEP, Package (0x05)  // _DEP: Dependencies
            {
                PEPD, 
                GPO0, 
                I2C4, 
                I2C5, 
                ^^I2C5.PMI1
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBus (0x002C, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2C4",
                        0x00, ResourceConsumer, ,
                        )
                })
                Return (SBUF)
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (CondRefOf (\_SB.I2C5.PMI1, Local1))
                {
                    If (LEqual (^^^I2C5.PMI1.AVBL, One))
                    {
                        Store (Zero, ^^^I2C5.PMI1.DLD3)
                        If (LEqual (^^^I2C5.PMI1.AVBG, One))
                        {
                            Store (One, ^^^I2C5.PMI1.GD3X)
                            Sleep (0x0A)
                        }
                    }
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (CondRefOf (\_SB.I2C5.PMI1, Local1))
                {
                    If (LEqual (^^^I2C5.PMI1.AVBL, One))
                    {
                        Store (One, ^^^I2C5.PMI1.DLD3)
                        If (LEqual (^^^I2C5.PMI1.AVBG, One))
                        {
                            Store (One, ^^^I2C5.PMI1.GD3X)
                            Sleep (0x0A)
                        }
                    }
                }
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x07), DSEN)
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                Store (Zero, NDID)
                If (LNotEqual (DIDL, Zero))
                {
                    Store (SDDL (DIDL), DID1)
                }

                If (LNotEqual (DDL2, Zero))
                {
                    Store (SDDL (DDL2), DID2)
                }

                If (LNotEqual (DDL3, Zero))
                {
                    Store (SDDL (DDL3), DID3)
                }

                If (LNotEqual (DDL4, Zero))
                {
                    Store (SDDL (DDL4), DID4)
                }

                If (LNotEqual (DDL5, Zero))
                {
                    Store (SDDL (DDL5), DID5)
                }

                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x02)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP1, One))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP1, One))
                    }

                    Return (TMP1)
                }

                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x03)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP2, 0x02))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP2, 0x02))
                    }

                    Return (TMP2)
                }

                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP3, One))
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP3, 0x03))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP3, 0x03))
                    }

                    Return (TMP3)
                }

                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x05)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP4, One))
                    Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP4, 0x04))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP4, 0x04))
                    }

                    Return (TMP4)
                }

                If (LGreater (NDID, 0x04))
                {
                    Name (TMP5, Package (0x06)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP5, One))
                    Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP5, 0x05))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP5, 0x05))
                    }

                    Return (TMP5)
                }

                If (LLess (SOCS, 0x02))
                {
                    Return (Package (0x02)
                    {
                        0x0400, 
                        0x00020F39
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x0400, 
                        0x00020F38
                    })
                }
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID1), 0x0400))
                    {
                        Store (One, EDPV)
                        Store (DID1, DIDX)
                        Return (One)
                    }

                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID2), 0x0400))
                    {
                        Store (0x02, EDPV)
                        Store (DID2, DIDX)
                        Return (0x02)
                    }

                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID3), 0x0400))
                    {
                        Store (0x03, EDPV)
                        Store (DID3, DIDX)
                        Return (0x03)
                    }

                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID4), 0x0400))
                    {
                        Store (0x04, EDPV)
                        Store (DID4, DIDX)
                        Return (0x04)
                    }

                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID5), 0x0400))
                    {
                        Store (0x05, EDPV)
                        Store (DID5, DIDX)
                        Return (0x05)
                    }

                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID6), 0x0400))
                    {
                        Store (0x06, EDPV)
                        Store (DID6, DIDX)
                        Return (0x06)
                    }

                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID7), 0x0400))
                    {
                        Store (0x07, EDPV)
                        Store (DID7, DIDX)
                        Return (0x07)
                    }

                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID8), 0x0400))
                    {
                        Store (0x08, EDPV)
                        Store (DID8, DIDX)
                        Return (0x08)
                    }

                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD1F)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (EDPV, Zero))
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDX))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (EDPV, Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (CDDS (DIDX))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DIDX))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x67)
                    {
                        0x50, 
                        0x32, 
                        Zero, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                    {
                        AINT (One, Arg0)
                        Store (Arg0, BRTL)
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL)
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (0x1D)
                }

                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (Zero)
                }

                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL8, Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            OperationRegion (IGDP, PCI_Config, Zero, 0x0100)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                MADR,   32, 
                Offset (0x50), 
                    ,   1, 
                GIVD,   1, 
                    ,   1, 
                GUMA,   5, 
                Offset (0x52), 
                Offset (0x54), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x58), 
                Offset (0x5C), 
                GSTM,   32, 
                Offset (0xE0), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xE4), 
                ASLE,   8, 
                Offset (0xE8), 
                Offset (0xFC), 
                ASLS,   32
            }

            OperationRegion (IGMM, SystemMemory, MADR, 0x3000)
            Field (IGMM, AnyAcc, NoLock, Preserve)
            {
                Offset (0x20C8), 
                    ,   4, 
                DCFE,   4
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CAD1,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x06)
            {
                Package (0x01)
                {
                    0xA0
                }, 

                Package (0x01)
                {
                    0xC8
                }, 

                Package (0x01)
                {
                    0x010B
                }, 

                Package (0x01)
                {
                    0x0140
                }, 

                Package (0x01)
                {
                    0x0164
                }, 

                Package (0x01)
                {
                    0x0190
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0279, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (0x0240, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), 
                            PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM)
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (IBLC, 0x12), PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM)
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1800, PARM)
                        Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                        Or (ShiftLeft (DerefOf (Index (CDCT, DCFE)), 0x15), PARM, 
                            PARM)
                        Store (One, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM)
                        If (LEqual (PFLV, FMBL))
                        {
                            Store (0x000F87FD, PARM)
                        }

                        If (LEqual (PFLV, FDTP))
                        {
                            Store (0x000F87BD, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (And (PARM, 0x0F), ITVF)
                        Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)
                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID)
                                GLID (CLID)
                            }
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x12), 0x03, IBLC)
                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)
                        And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }

                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (LNot (DRDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (DRDY))
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }

                Return (LEqual (CSTS, 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                Store (Arg0, CEVT)
                Store (0x03, CSTS)
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                Notify (GFX0, 0x80)
                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                Store (Arg0, CLID)
                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (ARDY))
            }

            Method (AINT, 2, NotSerialized)
            {
                If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                Else
                                {
                                    Store (One, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                Else
                                {
                                    Store (0x06, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                Else
                                {
                                    Store (0x08, PFIT)
                                }
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT)
                    }

                    Or (PFIT, 0x80000000, PFIT)
                    Store (0x04, ASLC)
                }
                Else
                {
                    If (LEqual (Arg0, One))
                    {
                        Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                        Or (BCLP, 0x80000000, BCLP)
                        Store (0x02, ASLC)
                    }
                    Else
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Arg1, ALSI)
                            Store (One, ASLC)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Store (One, ASLE)
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }

                Return (Zero)
            }

            Device (ISP0)
            {
                Name (_ADR, 0x0F38)  // _ADR: Address
                Name (_DDN, "VLV2 ISP - 80860F38")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    PEPD
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (Zero)
                    }

                    If (LGreaterEqual (SOCS, 0x02))
                    {
                        If (LEqual (ISPD, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    Else
                    {
                        Store (0x0F39, _ADR)
                        Store ("VLV2 ISP - 80860F39", _DDN)
                        If (LEqual (ISPD, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Name (SBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x90C00000,         // Address Base
                        0x00400000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (SBUF)
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Return (0x02)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000000, 0x00) {}
        Processor (CPU1, 0x02, 0x00000000, 0x00) {}
        Processor (CPU2, 0x03, 0x00000000, 0x00) {}
        Processor (CPU3, 0x04, 0x00000000, 0x00) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (MOSD, SystemIO, 0x72, 0x02)
    Field (MOSD, ByteAcc, NoLock, Preserve)
    {
        IMOS,   8, 
        DMOS,   8
    }

    Method (WCMS, 2, NotSerialized)
    {
        Store (Arg0, IMOS)
        Store (Arg1, DMOS)
    }

    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }

        If (LEqual (Arg0, One))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)
                ), P80D)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)
                ), P80D)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)
                ), P80D)
        }

        Store (P80D, P80H)
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    OperationRegion (SWC0, SystemIO, 0x0610, 0x0F)
    Field (SWC0, ByteAcc, NoLock, Preserve)
    {
        G1S,    8, 
        Offset (0x04), 
        G1E,    8, 
        Offset (0x0A), 
        G1S2,   8, 
        G1S3,   8
    }

    OperationRegion (SWC1, SystemIO, PMBS, 0x2C)
    Field (SWC1, DWordAcc, NoLock, Preserve)
    {
        Offset (0x20), 
        G0S,    32, 
        Offset (0x28), 
        G0EN,   32
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Zero, P80D)
        P8XH (Zero, Arg0)
        Store (Ones, G1S3)
        Store (Ones, G1S2)
        Store (One, G1S)
        Store (One, G1E)
        Store (Ones, G0S)
        If (CondRefOf (TCGM))
        {
            \_SB.PCI0.LPCB.TPM.PTS (Arg0)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        If (NEXP)
        {
            If (And (OSCC, 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If (And (OSCC, 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LEqual (PFLV, FMBL))
            {
                If (LEqual (Arg0, 0x04))
                {
                    PNOT ()
                }
            }

            If (And (CFGD, 0x01000000)) {}
            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (\_PR.CPU0._PPC, Zero))
                    {
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                    Else
                    {
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
            }
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81)
        }
    }

    Scope (_SB)
    {
        Name (CRTT, 0x6E)
        Name (ACTT, 0x55)
        Name (SCR0, 0x0102)
        Name (SCR1, 0x0102)
        Name (SCR2, 0x0102)
        Name (SCR3, 0x0102)
        Name (GCR0, 0x46)
        Name (GCR1, 0x46)
        Name (GCR2, 0x46)
        Name (GCR3, 0x46)
        Name (GCR4, 0x46)
        Name (PST0, 0x3C)
        Name (PST1, 0x3C)
        Name (PST2, 0x3C)
        Name (PST3, 0x3C)
        Name (PST4, 0x3C)
        Name (LPMV, 0x03)
        Name (PDBG, Zero)
        Name (PDPM, One)
        Name (PDBP, One)
        Name (DLPO, Package (0x06)
        {
            One, 
            One, 
            One, 
            0x19, 
            One, 
            One
        })
        Name (BRQD, Zero)
        Name (PSC1, Zero)
        Name (PSC2, Zero)
        Name (PSC3, Zero)
        Name (PSA1, Zero)
        Name (PSA2, Zero)
        Name (PSA3, Zero)
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (DPCT, CRTT)
            Store (DPPT, ACTT)
            Store (DGC0, GCR0)
            Store (DGC1, GCR1)
            Store (DGC2, GCR2)
            Store (DGC3, GCR3)
            Store (DGC4, GCR4)
            Store (DGP0, PST0)
            Store (DGP1, PST1)
            Store (DGP2, PST2)
            Store (DGP3, PST3)
            Store (DGP4, PST4)
            Store (DSC0, SCR0)
            Store (DSC1, SCR1)
            Store (DSC2, SCR2)
            Store (DSC3, SCR3)
            Store (DLPM, LPMV)
            Store (DDBG, PDBG)
            Store (LPOE, Index (DLPO, One))
            Store (LPPS, Index (DLPO, 0x02))
            Store (LPST, Index (DLPO, 0x03))
            Store (LPPC, Index (DLPO, 0x04))
            Store (LPPF, Index (DLPO, 0x05))
            Store (DPME, PDPM)
        }

        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Return (Zero)
            }
        }

        Device (CIND)
        {
            Name (_HID, "INT33D3")  // _HID: Hardware ID
            Name (_CID, "PNP0C60")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LAnd (And (IUCE, One), LGreaterEqual (OSYS, 0x07DC)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Scope (PCI0)
        {
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (0x07D0, OSYS)
                If (CondRefOf (\_OSI, Local0))
                {
                    If (_OSI ("Windows 2001"))
                    {
                        Store (0x07D1, OSYS)
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        Store (0x07D1, OSYS)
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        Store (0x07D2, OSYS)
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        Store (0x07D6, OSYS)
                    }

                    If (_OSI ("Windows 2009"))
                    {
                        Store (0x07D9, OSYS)
                    }

                    If (_OSI ("Windows 2012"))
                    {
                        Store (0x07DC, OSYS)
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        Store (0x07DD, OSYS)
                    }
                }
            }

            Method (NHPG, 0, Serialized)
            {
            }

            Method (NPME, 0, Serialized)
            {
            }
        }

        Device (GPED)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT0002")  // _HID: Hardware ID
            Name (_CID, "INT0002")  // _CID: Compatible ID
            Name (_DDN, "Virtual GPIO controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (INST, One)
            Name (XTMP, Zero)
            OperationRegion (SCIS, SystemMemory, 0xFED030C0, 0x04)
            Field (SCIS, DWordAcc, NoLock, Preserve)
            {
                LGBE,   1, 
                LHAD,   1, 
                LATA,   1, 
                LDIO,   1, 
                LARD,   1, 
                LIO1,   1, 
                LCEP,   1, 
                LANB,   1, 
                LHCI,   1, 
                LOTG,   1, 
                LECI,   1, 
                LHSI,   1
            }

            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0x69, 0xB4, 0x38, 0x8B, 0x95, 0x6F, 0x08, 0x4B,
                            /* 0008 */   0x9B, 0x02, 0x2D, 0xEF, 0xCC, 0x2D, 0x2C, 0x35
                        }))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (Buffer (One)
                            {
                                 0x03
                            })
                        }
                    }

                    If (LEqual (Arg2, One))
                    {
                        Return (Add (PMBS, 0x20))
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00
                    })
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000009,
                    }
                })
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.GPED", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (RBUF)
            }

            Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If (LEqual (XHCI, Zero))
                {
                    If (LEqual (^^PCI0.EHC1.PMES, One))
                    {
                        Store (Zero, ^^PCI0.EHC1.PMEE)
                        Store (^^PCI0.EHC1.PMEE, Local0)
                        Notify (^^PCI0.EHC1, 0x02)
                    }
                }
                Else
                {
                    If (LGreater (SOCS, 0x05))
                    {
                        And (^^PCI0.XHC1.PMCS, 0x8000, XTMP)
                        If (LEqual (XTMP, 0x8000))
                        {
                            Notify (^^PCI0.XHC1, 0x02)
                        }
                    }
                    Else
                    {
                        If (LGreater (SOCS, 0x02))
                        {
                            And (^^PCI0.XHC1.PMCS, 0x8000, XTMP)
                            If (LEqual (XTMP, 0x8000))
                            {
                                Store (0x81, ^^PCI0.XHC1.PMCH)
                                Notify (^^PCI0.XHC1, 0x02)
                            }
                        }
                        Else
                        {
                            And (^^PCI0.XHC1.PMCS, 0x0103, XTMP)
                            If (LEqual (XTMP, 0x0103))
                            {
                                Store (0x0100, ^^PCI0.XHC1.PMCS)
                                Sleep (0x0A)
                                And (^^PCI0.XHC1.PMCS, 0x8000, XTMP)
                                If (LEqual (XTMP, 0x8000))
                                {
                                    Store (0x81, ^^PCI0.XHC1.PMCH)
                                }
                                Else
                                {
                                    Store (0x0103, ^^PCI0.XHC1.PMCS)
                                }

                                Sleep (0x0A)
                                Notify (^^PCI0.XHC1, 0x02)
                            }
                            Else
                            {
                                Store (0x81, ^^PCI0.XHC1.PMCH)
                                Sleep (0x0A)
                            }
                        }
                    }
                }

                If (LNotEqual (OTGM, Zero))
                {
                    If (LEqual (^^PCI0.OTG1.PMES, One))
                    {
                        ADBG ("OTG wake")
                        Store (Zero, ^^PCI0.OTG1.PMEE)
                        Store (Zero, ^^PCI0.OTG1.CPME)
                        Store (Zero, ^^PCI0.OTG1.U2EN)
                        Store (Zero, ^^PCI0.OTG1.U3EN)
                        Notify (^^PCI0.OTG1, 0x02)
                    }
                }

                If (LEqual (^^PCI0.SEC0.PMES, One))
                {
                    Store (Zero, ^^PCI0.SEC0.PMEE)
                    Store (^^PCI0.SEC0.PMEE, Local0)
                    Notify (^^PCI0.SEC0, 0x02)
                }
            }
        }

        Device (GPO0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC")  // _HID: Hardware ID
            Name (_CID, "INT33FC")  // _CID: Compatible ID
            Name (_DDN, "ValleyView General Purpose Input/Output (GPIO) controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0C000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000031,
                    }
                })
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x08))
                {
                    Store (Arg1, AVBL)
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                ), 
                CCU2,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0003
                        }
                ), 
                CCU3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0064
                        }
                ), 
                WWD3,   1
            }
        }

        Device (GPO1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC")  // _HID: Hardware ID
            Name (_CID, "INT33FC")  // _CID: Compatible ID
            Name (_DDN, "ValleyView GPNCORE controller")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0D000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000030,
                    }
                })
                Return (RBUF)
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x08))
                {
                    Store (Arg1, AVBL)
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000F
                        }
                ), 
                BST5,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001A
                        }
                ), 
                TCD3,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (GPO2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC")  // _HID: Hardware ID
            Name (_CID, "INT33FC")  // _CID: Compatible ID
            Name (_DDN, "ValleyView GPSUS controller")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0E000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000032,
                    }
                })
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0012
                        }
                    GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Name (FBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, SharedAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0012
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000A
                        }
                })
                Return (FBUF)
            }

            Name (BMUX, Buffer (0x03)
            {
                 0x00, 0x01, 0x00
            })
            CreateByteField (BMUX, Zero, BBBY)
            CreateByteField (BMUX, 0x02, DDDT)
            Method (_E12, 0, NotSerialized)  // _Exx: Edge-Triggered GPE
            {
                If (LAnd (LEqual (AVBL, One), LEqual (^^GPO1.AVBL, One)))
                {
                    If (LEqual (USID, One))
                    {
                        Store (Zero, ^^GPO1.BST5)
                        Sleep (0x05)
                        Store (One, MOTG)
                        ^^PCI0.XHC1.PWOF ()
                    }
                    Else
                    {
                        Store (One, ^^GPO1.BST5)
                        Sleep (0x05)
                        Store (Zero, MOTG)
                        ^^PCI0.XHC1.PWON ()
                    }
                }
            }

            Name (BMBQ, Buffer (0x03)
            {
                 0x00, 0x01, 0x00
            })
            CreateByteField (BMBQ, Zero, BBBQ)
            CreateByteField (BMBQ, 0x02, DDBQ)
            Method (BOST, 1, NotSerialized)
            {
                Store (^^I2C1.BQ01, BMBQ)
                If (LEqual (Arg0, One))
                {
                    And (DDBQ, 0xCF, DDBQ)
                    Or (DDBQ, 0x20, DDBQ)
                }
                Else
                {
                    And (DDBQ, 0xCF, DDBQ)
                    Or (DDBQ, 0x10, DDBQ)
                }

                Store (BMBQ, ^^I2C1.BQ01)
            }

            Name (BUFC, Buffer (0x03)
            {
                 0x00, 0x01, 0x00
            })
            CreateByteField (BUFC, Zero, BYAT)
            CreateByteField (BUFC, 0x02, DATA)
            Method (_E0A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE
            {
                Notify (LID0, 0x80)
            }

            Method (_E06, 0, NotSerialized)  // _Exx: Edge-Triggered GPE
            {
                Notify (ADP1, 0x80)
                Notify (^^I2C5.BMBT, 0x80)
                Notify (^^I2C5.BMBT, 0x81)
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x08))
                {
                    Store (Arg1, AVBL)
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0014
                        }
                ), 
                WFD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                ), 
                MOTG,   1, 
                Connection (
                    GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0012
                        }
                ), 
                USID,   1, 
                Connection (
                    GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                ), 
                DCIN,   1
            }
        }

        Device (PEPD)
        {
            Name (_HID, "INT3396")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80"))  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PEPP, Zero)
            Name (DEVS, Package (0x01)
            {
                Zero
            })
            Name (DEVX, Package (0x0E)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.XHC1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SEC0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C2", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C3", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C4", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C5", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHA", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHB", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHC", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT2", 
                    One
                }
            })
            Name (DEX1, Package (0x0D)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.XHC1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SEC0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C2", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C3", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C4", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHA", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHB", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHC", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT2", 
                    One
                }
            })
            Name (DEX2, Package (0x0D)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.XHC1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SEC0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C2", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C3", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C4", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHA", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHB", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHD", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT2", 
                    One
                }
            })
            Name (CDMP, Package (0x02) {})
            Name (DEVY, Package (0x13)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHB", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHC", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (DEY1, Package (0x12)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHB", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHC", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (DEY2, Package (0x12)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHB", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHD", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (BCCD, Package (0x01)
            {
                Package (0x02)
                {
                    "\\_SB.SDHA", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                Zero, 
                                0x20, 
                                Zero, 
                                0x03, 
                                Ones
                            }, 

                            Package (0x03)
                            {
                                0xFFFFFFFC, 
                                Zero, 
                                0x04
                            }, 

                            Zero
                        }
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xE0, 0xBF, 0xFE, 0xB8, 0xF8, 0xBA, 0x4B, 0x45,
                            /* 0008 */   0xAE, 0xCD, 0x49, 0xFB, 0x91, 0x13, 0x7B, 0x21
                        }))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x0F
                        })
                    }

                    If (LEqual (Arg2, One))
                    {
                        Store (One, PEPP)
                        Return (0x0F)
                    }

                    If (LEqual (Arg2, 0x02))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Return (DEVS)
                        }

                        If (LEqual (Arg1, One))
                        {
                            If (LEqual (PMID, 0x02))
                            {
                                Return (DEVX)
                            }
                            Else
                            {
                                If (LEqual (PMID, 0x05))
                                {
                                    Return (DEX2)
                                }

                                Return (DEX1)
                            }
                        }
                    }

                    If (LEqual (Arg2, 0x03))
                    {
                        Store ("\\_SB.SDHA", Index (CDMP, Zero))
                        Store (EM1A, Index (CDMP, One))
                        Return (CDMP)
                    }
                }

                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xA0, 0x40, 0xEB, 0xC4, 0xD2, 0x6C, 0xE2, 0x11,
                            /* 0008 */   0xBC, 0xFD, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66
                        }))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07
                        })
                    }

                    If (LEqual (Arg2, One))
                    {
                        If (LEqual (PMID, 0x02))
                        {
                            Return (DEVY)
                        }
                        Else
                        {
                            If (LEqual (PMID, 0x05))
                            {
                                Return (DEY2)
                            }

                            Return (DEY1)
                        }
                    }

                    If (LEqual (Arg2, 0x02))
                    {
                        Store (EM1A, Local0)
                        Add (Local0, 0x84, Local0)
                        Store (Local0, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DerefOf (
                            Index (BCCD, Zero)), One)), Zero)), Zero)), 0x04
                            ))
                        Return (BCCD)
                    }
                }

                Return (One)
            }
        }

        Device (SDHA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F14")  // _HID: Hardware ID
            Name (_CID, "PNP0D40")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) eMMC Controller - 80860F14")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBF1, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002D,
                }
            })
            Name (RBF2, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0B)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002C,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBF1, \_SB.SDHA._Y0A._BAS, B0B1)  // _BAS: Base Address
                CreateDWordField (RBF1, \_SB.SDHA._Y0A._LEN, B0L1)  // _LEN: Length
                Store (EM0A, B0B1)
                Store (EM0L, B0L1)
                CreateDWordField (RBF2, \_SB.SDHA._Y0B._BAS, B0B2)  // _BAS: Base Address
                CreateDWordField (RBF2, \_SB.SDHA._Y0B._LEN, B0L2)  // _LEN: Length
                Store (EM0A, B0B2)
                Store (EM0L, B0L2)
                If (LEqual (EMVR, One))
                {
                    Return (RBF2)
                }

                Return (RBF1)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
                If (LOr (LLess (SOCS, 0x02), LAnd (LEqual (SOCS, 0x02), LEqual (
                    EMVR, One))))
                {
                    Sleep (0x02)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
                If (LOr (LLess (SOCS, 0x02), LAnd (LEqual (SOCS, 0x02), LEqual (
                    EMVR, One))))
                {
                    Sleep (0x02)
                }
            }

            OperationRegion (KEYS, SystemMemory, EM1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Device (EMMD)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (SDHB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33BB")  // _HID: Hardware ID
            Name (_CID, "PNP0D40")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SDIO Controller - 80860F15")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                PEPD, 
                GPO2
            })
            Name (PSTS, Zero)
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0C)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002E,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SDHB._Y0C._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SDHB._Y0C._LEN, B0LN)  // _LEN: Length
                Store (SI0A, B0BA)
                Store (SI0L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LLessEqual (STEP, 0x04))
                {
                    Store (SDMD, _HRV)
                }

                If (LOr (LEqual (SI0A, Zero), LEqual (SD2D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
                If (LEqual (PSTS, Zero))
                {
                    If (LEqual (^^GPO2.AVBL, One))
                    {
                        Store (One, ^^GPO2.WFD3)
                        Store (One, PSTS)
                    }
                }
            }

            OperationRegion (KEYS, SystemMemory, SI1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (WLAN)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO2
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (Zero)
                    }

                    Return (Zero)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                    })
                    Return (RBUF)
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                }
            }

            Device (WLA2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (Zero)
                    }

                    Return (Zero)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (NAM, Buffer (0x0F)
                    {
                        "\\_SB.SDHB.WLAN"
                    })
                    Name (SPB, Buffer (0x0C)
                    {
                        /* 0000 */   0x8E, 0x18, 0x00, 0x01, 0x00, 0xC0, 0x02, 0x00,
                        /* 0008 */   0x00, 0x01, 0x00, 0x00
                    })
                    Name (END, ResourceTemplate ()
                    {
                    })
                    Concatenate (SPB, NAM, Local0)
                    Concatenate (Local0, END, Local1)
                    Return (Local1)
                }
            }

            Device (RTLW)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO2
                })
                Name (_HID, "RTL8723")  // _HID: Hardware ID
                Name (_CID, "RTL8723")  // _CID: Compatible ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000F
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                    })
                    Return (RBUF)
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    If (LEqual (^^^GPO2.AVBL, One))
                    {
                        Store (Zero, PSTS)
                    }
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    If (LEqual (PSTS, Zero))
                    {
                        If (LEqual (^^^GPO2.AVBL, One))
                        {
                            Store (One, ^^^GPO2.WFD3)
                            Store (One, PSTS)
                        }
                    }
                }
            }

            Device (BRCM)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO2
                })
                Name (_STA, 0x0F)  // _STA: Status
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                    })
                    Return (RBUF)
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                }
            }

            Device (BRC2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (NAM, Buffer (0x0F)
                    {
                        "\\_SB.SDHB.BRCM"
                    })
                    Name (SPB, Buffer (0x0C)
                    {
                        /* 0000 */   0x8E, 0x18, 0x00, 0x01, 0x00, 0xC0, 0x02, 0x00,
                        /* 0008 */   0x00, 0x01, 0x00, 0x00
                    })
                    Name (END, ResourceTemplate ()
                    {
                    })
                    Concatenate (SPB, NAM, Local0)
                    Concatenate (Local0, END, Local1)
                    Return (Local1)
                }
            }
        }

        Device (SDHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F14")  // _HID: Hardware ID
            Name (_CID, "PNP0D40")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SD Card Controller - 80860F16")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                PEPD, 
                GPO0
            })
            Name (TDEP, Package (0x04)
            {
                PEPD, 
                GPO0, 
                I2C5, 
                ^I2C5.PMI2
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0D)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
            })
            Name (ABUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0E)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0028
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0029
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SDHC._Y0D._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SDHC._Y0D._LEN, B0LN)  // _LEN: Length
                Store (SD0A, B0BA)
                Store (SD0L, B0LN)
                CreateDWordField (ABUF, \_SB.SDHC._Y0E._BAS, B0BX)  // _BAS: Base Address
                CreateDWordField (ABUF, \_SB.SDHC._Y0E._LEN, B0LX)  // _LEN: Length
                Store (SD0A, B0BX)
                Store (SD0L, B0LX)
                If (And (OSSL, 0x80))
                {
                    Return (ABUF)
                }

                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (SD0A, Zero), LEqual (SD3D, One)))
                {
                    Return (Zero)
                }

                If (LEqual (PMID, 0x05))
                {
                    ADBG ("XPWR_DCOVE")
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                ADBG ("SD card-----ps3")
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
                If (CondRefOf (\_SB.I2C5.PMI2, Local2))
                {
                    If (LEqual (^^I2C5.PMI2.AVBL, One))
                    {
                        Store (Zero, ^^I2C5.PMI2.LDO7)
                        If (LEqual (^^I2C5.PMI2.AVBG, One))
                        {
                            ADBG ("SD card-----333ps3")
                            Store (One, ^^I2C5.PMI2.GSDX)
                            Sleep (0x1E)
                        }
                    }
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                ADBG ("SD card-----ps0")
                If (CondRefOf (\_SB.I2C5.PMI2, Local2))
                {
                    If (LEqual (^^I2C5.PMI2.AVBL, One))
                    {
                        Store (One, ^^I2C5.PMI2.LDO7)
                        If (LEqual (^^I2C5.PMI2.AVBG, One))
                        {
                            ADBG ("SD card-----000ps0")
                            Store (One, ^^I2C5.PMI2.GSDX)
                            Sleep (0x1E)
                        }
                    }
                }

                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, SD1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (SDHD)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F14")  // _HID: Hardware ID
            Name (_CID, "PNP0D40")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SD Card Controller - 80860F16")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                PEPD, 
                GPO0, 
                I2C5, 
                ^I2C5.PMI1
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0F)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
            })
            Name (ABUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y10)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0028
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0029
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SDHD._Y0F._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SDHD._Y0F._LEN, B0LN)  // _LEN: Length
                Store (SD0A, B0BA)
                Store (SD0L, B0LN)
                CreateDWordField (ABUF, \_SB.SDHD._Y10._BAS, B0BX)  // _BAS: Base Address
                CreateDWordField (ABUF, \_SB.SDHD._Y10._LEN, B0LX)  // _LEN: Length
                Store (SD0A, B0BX)
                Store (SD0L, B0LX)
                If (And (OSSL, 0x80))
                {
                    Return (ABUF)
                }

                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (SD0A, Zero), LEqual (SD3D, One)))
                {
                    Return (Zero)
                }

                If (LEqual (PMID, 0x05))
                {
                    ADBG ("XPWR_DCOVE")
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                ADBG ("SD card-----ps3 Xpower")
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
                If (CondRefOf (\_SB.I2C5.PMI1, Local1))
                {
                    ADBG ("SD card-----1ps3 Xpower")
                    If (LEqual (^^I2C5.PMI1.AVBL, One))
                    {
                        ADBG ("SD card-----2ps3 Xpower")
                        Store (Zero, ^^I2C5.PMI1.GPI1)
                        If (LEqual (^^I2C5.PMI1.AVBG, One))
                        {
                            ADBG ("SD card-----3ps3 Xpower")
                            Store (One, ^^I2C5.PMI1.GSDX)
                            Sleep (0x1E)
                        }
                    }
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                ADBG ("SD card-----ps0")
                If (CondRefOf (\_SB.I2C5.PMI1, Local1))
                {
                    ADBG ("SD card-----1ps0 Xpower")
                    If (LEqual (^^I2C5.PMI1.AVBL, One))
                    {
                        ADBG ("SD card-----2ps0 Xpower")
                        Store (One, ^^I2C5.PMI1.GPI1)
                        If (LEqual (^^I2C5.PMI1.AVBG, One))
                        {
                            ADBG ("SD card-----3ps0 Xpower")
                            Store (One, ^^I2C5.PMI1.GSDX)
                            Sleep (0x1E)
                        }
                    }
                }

                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, SD1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (GDM1)
        {
            Name (_HID, "INTL9C60")  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #1 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y11)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002A,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GDM1._Y11._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GDM1._Y11._LEN, B0LN)  // _LEN: Length
                Store (D10A, B0BA)
                Store (D10L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (D10A, Zero), LEqual (L10D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (GDM2)
        {
            Name (_HID, "INTL9C60")  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #2 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y12)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002B,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GDM2._Y12._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GDM2._Y12._LEN, B0LN)  // _LEN: Length
                Store (D20A, B0BA)
                Store (D20L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (D20A, Zero), LEqual (L20D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (PWM1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F09")  // _HID: Hardware ID
            Name (_CID, "80860F09")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #1 - 80860F08")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y13)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PWM1._Y13._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PWM1._Y13._LEN, B0LN)  // _LEN: Length
                Store (P10A, B0BA)
                Store (P10L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (P10A, Zero), LEqual (L11D, One)))
                {
                    Return (Zero)
                }

                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, P11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (PWM2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F09")  // _HID: Hardware ID
            Name (_CID, "80860F09")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #2 - 80860F09")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PWM2._Y14._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PWM2._Y14._LEN, B0LN)  // _LEN: Length
                Store (P20A, B0BA)
                Store (P20L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (P20A, Zero), LEqual (L12D, One)))
                {
                    Return (Zero)
                }

                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, P21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (URT1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0A")  // _HID: Hardware ID
            Name (_CID, "80860F0A")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #1 - 80860F0A")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y15)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000027,
                }
                FixedDMA (0x0002, 0x0002, Width32bit, )
                FixedDMA (0x0003, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.URT1._Y15._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.URT1._Y15._LEN, B0LN)  // _LEN: Length
                Store (U10A, B0BA)
                Store (U10L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (U10A, Zero), LEqual (L13D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, U11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (BTH0)
            {
                Name (_HID, "BCM2E67")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (WIFS, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBus (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, ,
                            )
                        GpioInt (Edge, ActiveLow, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                    })
                    Return (UBUF)
                }
            }

            Device (BTH1)
            {
                Name (_HID, "OBDA8723")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (WIFS, 0x02))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBus (0x0001C200, DataBitsEight, StopBitsOne,
                            0xC0, LittleEndian, ParityTypeEven, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                    })
                    Name (WBUF, ResourceTemplate ()
                    {
                        UartSerialBus (0x0001C200, DataBitsEight, StopBitsOne,
                            0xC0, LittleEndian, ParityTypeEven, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                    })
                    If (And (OSSL, 0x80))
                    {
                        Return (UBUF)
                    }

                    Return (WBUF)
                }
            }
        }

        Device (URT2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0A")  // _HID: Hardware ID
            Name (_CID, "80860F0A")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #2 - 80860F0C")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y16)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000028,
                }
                FixedDMA (0x0004, 0x0004, Width32bit, )
                FixedDMA (0x0005, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.URT2._Y16._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.URT2._Y16._LEN, B0LN)  // _LEN: Length
                Store (U20A, B0BA)
                Store (U20L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (U20A, Zero), LEqual (L14D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, U21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (GPS0)
            {
                Name (_HID, "MLT4752")  // _HID: Hardware ID
                Name (_HRV, Zero)  // _HRV: Hardware Revision
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (GPSS, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBus (0x000E1000, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.URT2",
                            0x00, ResourceConsumer, ,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0016
                            }
                    })
                    Return (UBUF)
                }
            }
        }

        Device (SPI1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0E")  // _HID: Hardware ID
            Name (_CID, "80860F0E")  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) SPI Controller - 80860F0E")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y17)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000029,
                }
                FixedDMA (0x0000, 0x0000, Width32bit, )
                FixedDMA (0x0001, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SPI1._Y17._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SPI1._Y17._LEN, B0LN)  // _LEN: Length
                Store (SP0A, B0BA)
                Store (SP0L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (SP0A, Zero), LEqual (L15D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, SP1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (FPNT)
            {
                Name (_HID, "AUTH2750")  // _HID: Hardware ID
                Name (_DDN, "AuthenTec AES2750")  // _DDN: DOS Device Name
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        SpiSerialBus (0x0001, PolarityLow, FourWireMode, 0x08,
                            ControllerInitiated, 0x007A1200, ClockPolarityLow,
                            ClockPhaseSecond, "\\_SB.SPI1",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000048,
                        }
                    })
                    Return (UBUF)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }
        }

        Device (NFC2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "NXP5442")  // _HID: Hardware ID
            Name (_CID, "NXP5442")  // _CID: Compatible ID
            Name (_DDN, "NXP NFC")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (NFCS, 0x02))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (I2C1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41")  // _HID: Hardware ID
            Name (_CID, "80860F41")  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #1 - 80860F41")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y18)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000020,
                }
                FixedDMA (0x0010, 0x0000, Width32bit, )
                FixedDMA (0x0011, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C1._Y18._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C1._Y18._LEN, B0LN)  // _LEN: Length
                Store (I10A, B0BA)
                Store (I10L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I10A, Zero), LEqual (L21D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (I2C2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41")  // _HID: Hardware ID
            Name (_CID, "80860F41")  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #2 - 80860F42")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y19)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000021,
                }
                FixedDMA (0x0012, 0x0002, Width32bit, )
                FixedDMA (0x0013, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C2._Y19._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C2._Y19._LEN, B0LN)  // _LEN: Length
                Store (I20A, B0BA)
                Store (I20L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I20A, Zero), LEqual (L22D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (CLK0, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC0)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    Store (One, CKC0)
                    Store (One, CKF0)
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Store (0x02, CKC0)
                }
            }

            PowerResource (CLK1, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC1)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    Store (One, CKC1)
                    Store (One, CKF1)
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Store (0x02, CKC1)
                }
            }

            Device (RTEK)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "10EC5640")  // _HID: Hardware ID
                Name (_CID, "10EC5640")  // _CID: Compatible ID
                Name (_DDN, "RTEK Codec Controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (CHAN, Package (0x02)
                {
                    One, 
                    0x017D7840
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x001C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, ,
                            )
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0004
                            }
                    })
                    Return (SBUF)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    Store (Zero, CKC3)
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    Store (One, CKC3)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x44, 0x0C, 0x24, 0xA9, 0x32, 0xF0, 0x4D, 0x45,
                                /* 0008 */   0x80, 0xE5, 0x7A, 0xEE, 0xD8, 0x0E, 0x95, 0x51
                            }))
                    {
                        CreateByteField (Arg3, Zero, FARG)
                        While (One)
                        {
                            Store (Arg2, _T_0)
                            If (LEqual (_T_0, 0x03))
                            {
                                While (One)
                                {
                                    Store (Arg3, _T_1)
                                    If (LEqual (_T_1, Zero))
                                    {
                                        Return (0x1D)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_1, 0x04))
                                        {
                                            Return (Buffer (0x5C)
                                            {
                                                /* 0000 */   0x0B, 0x00, 0x00, 0xCE, 0x1D, 0x00, 0x01, 0x00,
                                                /* 0008 */   0x07, 0x08, 0x01, 0x00, 0x1D, 0x00, 0x01, 0x00,
                                                /* 0010 */   0x92, 0x92, 0x02, 0x00, 0x1D, 0x00, 0x01, 0x00,
                                                /* 0018 */   0x00, 0x04, 0x0D, 0x00, 0x1D, 0x00, 0x01, 0x00,
                                                /* 0020 */   0x00, 0x01, 0x0E, 0x00, 0x1D, 0x00, 0x01, 0x00,
                                                /* 0028 */   0x03, 0x40, 0xBB, 0x00, 0x40, 0x00, 0x01, 0x00,
                                                /* 0030 */   0x01, 0x00, 0x00, 0x00, 0x46, 0x00, 0x01, 0x00,
                                                /* 0038 */   0x02, 0x00, 0x00, 0x00, 0x45, 0x00, 0x01, 0x00,
                                                /* 0040 */   0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x01, 0x00,
                                                /* 0048 */   0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x01, 0x00,
                                                /* 0050 */   0x28, 0x03, 0x8C, 0x00, 0x1D, 0x00, 0x01, 0x00,
                                                /* 0058 */   0x47, 0x03, 0x1D, 0x01
                                            })
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_1, 0x02))
                                            {
                                                Return (Buffer (0xF6)
                                                {
                                                    /* 0000 */   0x00, 0x30, 0x40, 0x56, 0x17, 0x00, 0x01, 0x00,
                                                    /* 0008 */   0xA0, 0x00, 0x10, 0x1C, 0x01, 0x00, 0xA1, 0x00,
                                                    /* 0010 */   0x00, 0x00, 0x01, 0x00, 0xA2, 0x00, 0x83, 0xC8,
                                                    /* 0018 */   0x01, 0x00, 0xA3, 0x00, 0x10, 0x1C, 0x01, 0x00,
                                                    /* 0020 */   0xA4, 0x00, 0x00, 0x00, 0x01, 0x00, 0xA5, 0x00,
                                                    /* 0028 */   0x88, 0xD5, 0x01, 0x00, 0xA6, 0x00, 0x10, 0x1C,
                                                    /* 0030 */   0x01, 0x00, 0xA7, 0x00, 0x00, 0x00, 0x01, 0x00,
                                                    /* 0038 */   0xA8, 0x00, 0x04, 0xE9, 0x01, 0x00, 0xA9, 0x00,
                                                    /* 0040 */   0x10, 0x1C, 0x01, 0x00, 0xAA, 0x00, 0x00, 0x00,
                                                    /* 0048 */   0x01, 0x00, 0xAB, 0x00, 0x00, 0x00, 0x01, 0x00,
                                                    /* 0050 */   0xAC, 0x00, 0x10, 0x1C, 0x01, 0x00, 0xAD, 0x00,
                                                    /* 0058 */   0x00, 0x00, 0x01, 0x00, 0xAE, 0x00, 0x36, 0x04,
                                                    /* 0060 */   0x01, 0x00, 0xAF, 0x00, 0x00, 0x00, 0x01, 0x00,
                                                    /* 0068 */   0xB0, 0x00, 0x0B, 0x1D, 0x01, 0x00, 0xB1, 0x00,
                                                    /* 0070 */   0xB4, 0x02, 0x01, 0x00, 0xB2, 0x00, 0x2B, 0x1D,
                                                    /* 0078 */   0x01, 0x00, 0xB3, 0x00, 0x00, 0x08, 0x01, 0x00,
                                                    /* 0080 */   0xB4, 0x00, 0x00, 0x08, 0x00, 0x00, 0xB1, 0x00,
                                                    /* 0088 */   0x00, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x60,
                                                    /* 0090 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 0098 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00A0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00A8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00B0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00B8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00C0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00C8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00D0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00D8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00E0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00E8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                    /* 00F0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                                })
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_1, 0x03))
                                                {
                                                    Return (Buffer (0x42)
                                                    {
                                                        /* 0000 */   0x00, 0x20, 0x40, 0x56, 0x03, 0x00, 0x00, 0x00,
                                                        /* 0008 */   0xB4, 0x00, 0x06, 0x42, 0x00, 0x00, 0xB5, 0x00,
                                                        /* 0010 */   0xE9, 0x20, 0x00, 0x00, 0xB6, 0x00, 0x00, 0x01,
                                                        /* 0018 */   0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                        /* 0020 */   0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,
                                                        /* 0028 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                        /* 0030 */   0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                        /* 0038 */   0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00,
                                                        /* 0040 */   0x00, 0x00
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (0x80000002)
                                                }
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Break
                        }
                    }

                    Return (0x80000002)
                }
            }

            Device (TTLV)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "10TI3100")  // _HID: Hardware ID
                Name (_CID, "10TI3100")  // _CID: Compatible ID
                Name (_DDN, "TI TLV320AIC3100 Codec Controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (OBJ1, Package (0x0A)
                {
                    One, 
                    0x017D7840, 
                    One, 
                    0x97, 
                    One, 
                    0x86, 
                    One, 
                    One, 
                    0x14, 
                    0xB3
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0018, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
            }

            Device (CAM6)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "HIMX2056")  // _HID: Hardware ID
                Name (_CID, "HIMX2056")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "HIMX2056")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMI1
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28P, 
                    P18P, 
                    CLK1
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */   0x61, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (FCAS, 0x03), LEqual (PMID, 0x05)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0012
                            }
                        I2cSerialBus (0x0024, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x6A, 0xA7, 0x7B, 0x37, 0x90, 0xF3, 0xFF, 0x4A,
                                /* 0008 */   0xAB, 0x38, 0x9B, 0x1B, 0xF3, 0x3A, 0x30, 0x15
                            }))
                    {
                        Return ("HIMX2056")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xAA, 0xAA, 0x62, 0x3C, 0xE0, 0xD8, 0x1A, 0x40,
                                /* 0008 */   0x84, 0xC3, 0xFC, 0x05, 0x65, 0x6F, 0xA2, 0x8C
                            }))
                    {
                        Return ("HIMX2056")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0xCE, 0x2A, 0x82, 0x14, 0x28, 0x74, 0x41,
                                /* 0008 */   0xA5, 0x6B, 0x5F, 0x02, 0x9F, 0xE0, 0x79, 0xEE
                            }))
                    {
                        Return ("4SF211N2")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x2A, 0x51, 0x59, 0x29, 0x8C, 0x02, 0x46, 0x46,
                                /* 0008 */   0xB7, 0x3D, 0x4D, 0x1B, 0x56, 0x72, 0xFA, 0xD8
                            }))
                    {
                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x42, 0xB2, 0x8A, 0x91, 0x7C, 0xC3, 0x0A, 0x45,
                                /* 0008 */   0x9D, 0x0F, 0xF4, 0x7A, 0xB9, 0x7C, 0x3D, 0xEA
                            }))
                    {
                        Return (0x0101)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xD8, 0x7B, 0x3B, 0xEA, 0x9B, 0xE0, 0x39, 0x42,
                                /* 0008 */   0xAD, 0x6E, 0xED, 0x52, 0x5F, 0x3F, 0x26, 0xAB
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x92, 0xC4, 0x5A, 0xB6, 0x30, 0x9E, 0x60, 0x4D,
                                /* 0008 */   0xB5, 0xB2, 0xF4, 0x97, 0xC7, 0x90, 0xD9, 0xCF
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x0F, 0xAB, 0x70, 0xE7, 0x44, 0x26, 0xAB, 0x4B,
                                /* 0008 */   0x86, 0x28, 0xD6, 0x2F, 0x16, 0x83, 0xFB, 0x9D
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xB2, 0x4A, 0xA5, 0x1E, 0x84, 0xCD, 0xCC, 0x48,
                                /* 0008 */   0x9D, 0xD4, 0x7F, 0x59, 0x4E, 0xC3, 0xB0, 0x15
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x51, 0x26, 0xBE, 0x8D, 0xC1, 0x70, 0x6F, 0x4C,
                                /* 0008 */   0xAC, 0x87, 0xA3, 0x7C, 0xB4, 0x6E, 0x4A, 0xF6
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x39, 0xA6, 0xC9, 0x75, 0x8A, 0x5C, 0x00, 0x4A,
                                /* 0008 */   0x9F, 0x48, 0xA9, 0xC3, 0xB5, 0xDA, 0x78, 0x9F
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x49, 0x75, 0x25, 0x26, 0x71, 0x92, 0xA4, 0x4C,
                                /* 0008 */   0xBB, 0x43, 0xC4, 0x89, 0x9D, 0x5A, 0x48, 0x81
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x04002400)
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x40, 0x46, 0x23, 0x79, 0x10, 0x9E, 0xEA, 0x4F,
                                /* 0008 */   0xA5, 0xC1, 0xB5, 0xAA, 0x8B, 0x19, 0x75, 0x6F
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x01001200)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33FB")  // _HID: Hardware ID
                Name (_CID, "INT33FB")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV2722")  // _DDN: DOS Device Name
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMI1
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28P, 
                    P18P, 
                    CLK1
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */   0x61, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (FCAS, One), LEqual (PMID, 0x05)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0016
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0012
                            }
                        I2cSerialBus (0x0036, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x6A, 0xA7, 0x7B, 0x37, 0x90, 0xF3, 0xFF, 0x4A,
                                /* 0008 */   0xAB, 0x38, 0x9B, 0x1B, 0xF3, 0x3A, 0x30, 0x15
                            }))
                    {
                        Return ("INT33FB")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xAA, 0xAA, 0x62, 0x3C, 0xE0, 0xD8, 0x1A, 0x40,
                                /* 0008 */   0x84, 0xC3, 0xFC, 0x05, 0x65, 0x6F, 0xA2, 0x8C
                            }))
                    {
                        Return ("OV2722")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0xCE, 0x2A, 0x82, 0x14, 0x28, 0x74, 0x41,
                                /* 0008 */   0xA5, 0x6B, 0x5F, 0x02, 0x9F, 0xE0, 0x79, 0xEE
                            }))
                    {
                        Return ("13P2SF206")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x2A, 0x51, 0x59, 0x29, 0x8C, 0x02, 0x46, 0x46,
                                /* 0008 */   0xB7, 0x3D, 0x4D, 0x1B, 0x56, 0x72, 0xFA, 0xD8
                            }))
                    {
                        If (LEqual (BDID, 0x04))
                        {
                            If (LEqual (FBID, 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If (LEqual (FBID, 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x42, 0xB2, 0x8A, 0x91, 0x7C, 0xC3, 0x0A, 0x45,
                                /* 0008 */   0x9D, 0x0F, 0xF4, 0x7A, 0xB9, 0x7C, 0x3D, 0xEA
                            }))
                    {
                        Return (0x0101)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xD8, 0x7B, 0x3B, 0xEA, 0x9B, 0xE0, 0x39, 0x42,
                                /* 0008 */   0xAD, 0x6E, 0xED, 0x52, 0x5F, 0x3F, 0x26, 0xAB
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x92, 0xC4, 0x5A, 0xB6, 0x30, 0x9E, 0x60, 0x4D,
                                /* 0008 */   0xB5, 0xB2, 0xF4, 0x97, 0xC7, 0x90, 0xD9, 0xCF
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x0F, 0xAB, 0x70, 0xE7, 0x44, 0x26, 0xAB, 0x4B,
                                /* 0008 */   0x86, 0x28, 0xD6, 0x2F, 0x16, 0x83, 0xFB, 0x9D
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xB2, 0x4A, 0xA5, 0x1E, 0x84, 0xCD, 0xCC, 0x48,
                                /* 0008 */   0x9D, 0xD4, 0x7F, 0x59, 0x4E, 0xC3, 0xB0, 0x15
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x51, 0x26, 0xBE, 0x8D, 0xC1, 0x70, 0x6F, 0x4C,
                                /* 0008 */   0xAC, 0x87, 0xA3, 0x7C, 0xB4, 0x6E, 0x4A, 0xF6
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x39, 0xA6, 0xC9, 0x75, 0x8A, 0x5C, 0x00, 0x4A,
                                /* 0008 */   0x9F, 0x48, 0xA9, 0xC3, 0xB5, 0xDA, 0x78, 0x9F
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x49, 0x75, 0x25, 0x26, 0x71, 0x92, 0xA4, 0x4C,
                                /* 0008 */   0xBB, 0x43, 0xC4, 0x89, 0x9D, 0x5A, 0x48, 0x81
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x02003600)
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x40, 0x46, 0x23, 0x79, 0x10, 0x9E, 0xEA, 0x4F,
                                /* 0008 */   0xA5, 0xC1, 0xB5, 0xAA, 0x8B, 0x19, 0x75, 0x6F
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x1600)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x01001201)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM5)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F8")  // _HID: Hardware ID
                Name (_CID, "INT33F8")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "GC2235")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMI1
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28P, 
                    P18P, 
                    CLK1
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */   0x61, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (FCAS, 0x02), LEqual (PMID, 0x05)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0012
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0016
                            }
                        I2cSerialBus (0x003C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x6A, 0xA7, 0x7B, 0x37, 0x90, 0xF3, 0xFF, 0x4A,
                                /* 0008 */   0xAB, 0x38, 0x9B, 0x1B, 0xF3, 0x3A, 0x30, 0x15
                            }))
                    {
                        Return ("INT33F8")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xAA, 0xAA, 0x62, 0x3C, 0xE0, 0xD8, 0x1A, 0x40,
                                /* 0008 */   0x84, 0xC3, 0xFC, 0x05, 0x65, 0x6F, 0xA2, 0x8C
                            }))
                    {
                        Return ("GC2235")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0xCE, 0x2A, 0x82, 0x14, 0x28, 0x74, 0x41,
                                /* 0008 */   0xA5, 0x6B, 0x5F, 0x02, 0x9F, 0xE0, 0x79, 0xEE
                            }))
                    {
                        Return ("13P2BA807")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x2A, 0x51, 0x59, 0x29, 0x8C, 0x02, 0x46, 0x46,
                                /* 0008 */   0xB7, 0x3D, 0x4D, 0x1B, 0x56, 0x72, 0xFA, 0xD8
                            }))
                    {
                        If (LEqual (BDID, 0x04))
                        {
                            If (LEqual (FBID, 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If (LEqual (FBID, 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x42, 0xB2, 0x8A, 0x91, 0x7C, 0xC3, 0x0A, 0x45,
                                /* 0008 */   0x9D, 0x0F, 0xF4, 0x7A, 0xB9, 0x7C, 0x3D, 0xEA
                            }))
                    {
                        Return (0x0101)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xD8, 0x7B, 0x3B, 0xEA, 0x9B, 0xE0, 0x39, 0x42,
                                /* 0008 */   0xAD, 0x6E, 0xED, 0x52, 0x5F, 0x3F, 0x26, 0xAB
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x92, 0xC4, 0x5A, 0xB6, 0x30, 0x9E, 0x60, 0x4D,
                                /* 0008 */   0xB5, 0xB2, 0xF4, 0x97, 0xC7, 0x90, 0xD9, 0xCF
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x0F, 0xAB, 0x70, 0xE7, 0x44, 0x26, 0xAB, 0x4B,
                                /* 0008 */   0x86, 0x28, 0xD6, 0x2F, 0x16, 0x83, 0xFB, 0x9D
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xB2, 0x4A, 0xA5, 0x1E, 0x84, 0xCD, 0xCC, 0x48,
                                /* 0008 */   0x9D, 0xD4, 0x7F, 0x59, 0x4E, 0xC3, 0xB0, 0x15
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x51, 0x26, 0xBE, 0x8D, 0xC1, 0x70, 0x6F, 0x4C,
                                /* 0008 */   0xAC, 0x87, 0xA3, 0x7C, 0xB4, 0x6E, 0x4A, 0xF6
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x39, 0xA6, 0xC9, 0x75, 0x8A, 0x5C, 0x00, 0x4A,
                                /* 0008 */   0x9F, 0x48, 0xA9, 0xC3, 0xB5, 0xDA, 0x78, 0x9F
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x49, 0x75, 0x25, 0x26, 0x71, 0x92, 0xA4, 0x4C,
                                /* 0008 */   0xBB, 0x43, 0xC4, 0x89, 0x9D, 0x5A, 0x48, 0x81
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x02003C00)
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x40, 0x46, 0x23, 0x79, 0x10, 0x9E, 0xEA, 0x4F,
                                /* 0008 */   0xA5, 0xC1, 0xB5, 0xAA, 0x8B, 0x19, 0x75, 0x6F
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x01001200)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x1601)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (STRA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INTCF1C")  // _HID: Hardware ID
                Name (_CID, "INTCF1C")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "Flash LM3554")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0013
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0010
                            }
                        I2cSerialBus (0x0053, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x6A, 0xA7, 0x7B, 0x37, 0x90, 0xF3, 0xFF, 0x4A,
                                /* 0008 */   0xAB, 0x38, 0x9B, 0x1B, 0xF3, 0x3A, 0x30, 0x15
                            }))
                    {
                        Return ("INTCF1C")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0xCE, 0x2A, 0x82, 0x14, 0x28, 0x74, 0x41,
                                /* 0008 */   0xA5, 0x6B, 0x5F, 0x02, 0x9F, 0xE0, 0x79, 0xEE
                            }))
                    {
                        Return ("LM3554")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x2A, 0x51, 0x59, 0x29, 0x8C, 0x02, 0x46, 0x46,
                                /* 0008 */   0xB7, 0x3D, 0x4D, 0x1B, 0x56, 0x72, 0xFA, 0xD8
                            }))
                    {
                        If (LEqual (BDID, 0x04))
                        {
                            If (LEqual (FBID, 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If (LEqual (FBID, 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x39, 0xA6, 0xC9, 0x75, 0x8A, 0x5C, 0x00, 0x4A,
                                /* 0008 */   0x9F, 0x48, 0xA9, 0xC3, 0xB5, 0xDA, 0x78, 0x9F
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x49, 0x75, 0x25, 0x26, 0x71, 0x92, 0xA4, 0x4C,
                                /* 0008 */   0xBB, 0x43, 0xC4, 0x89, 0x9D, 0x5A, 0x48, 0x81
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x04005300)
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x40, 0x46, 0x23, 0x79, 0x10, 0x9E, 0xEA, 0x4F,
                                /* 0008 */   0xA5, 0xC1, 0xB5, 0xAA, 0x8B, 0x19, 0x75, 0x6F
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x04)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x01001302)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x01001403)
                        }

                        If (LEqual (Arg2, 0x04))
                        {
                            Return (0x01001001)
                        }

                        If (LEqual (Arg2, 0x05))
                        {
                            Return (0x01001104)
                        }
                    }

                    Return (Zero)
                }
            }
        }

        Device (I2C3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41")  // _HID: Hardware ID
            Name (_CID, "80860F41")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #3 - 80860F43")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000022,
                }
                FixedDMA (0x0014, 0x0004, Width32bit, )
                FixedDMA (0x0015, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C3._Y1A._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C3._Y1A._LEN, B0LN)  // _LEN: Length
                Store (I30A, B0BA)
                Store (I30L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I30A, Zero), LEqual (L23D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I31A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (CLK0, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC0)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    Store (One, CKC0)
                    Store (One, CKF0)
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Store (0x02, CKC0)
                }
            }

            PowerResource (CLK1, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC1)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    Store (One, CKC1)
                    Store (One, CKF1)
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Store (0x02, CKC1)
                }
            }

            Device (CAM7)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "HIMX2056")  // _HID: Hardware ID
                Name (_CID, "HIMX2056")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "HIMX2056")  // _DDN: DOS Device Name
                Name (_UID, Zero)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMI1
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28P, 
                    P18P, 
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */   0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (RCAS, 0x05), LEqual (PMID, 0x05)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        I2cSerialBus (0x0024, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x6A, 0xA7, 0x7B, 0x37, 0x90, 0xF3, 0xFF, 0x4A,
                                /* 0008 */   0xAB, 0x38, 0x9B, 0x1B, 0xF3, 0x3A, 0x30, 0x15
                            }))
                    {
                        Return ("HIMX2056")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xAA, 0xAA, 0x62, 0x3C, 0xE0, 0xD8, 0x1A, 0x40,
                                /* 0008 */   0x84, 0xC3, 0xFC, 0x05, 0x65, 0x6F, 0xA2, 0x8C
                            }))
                    {
                        Return ("HIMX2056")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0xCE, 0x2A, 0x82, 0x14, 0x28, 0x74, 0x41,
                                /* 0008 */   0xA5, 0x6B, 0x5F, 0x02, 0x9F, 0xE0, 0x79, 0xEE
                            }))
                    {
                        Return ("4SF211N2")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x2A, 0x51, 0x59, 0x29, 0x8C, 0x02, 0x46, 0x46,
                                /* 0008 */   0xB7, 0x3D, 0x4D, 0x1B, 0x56, 0x72, 0xFA, 0xD8
                            }))
                    {
                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x42, 0xB2, 0x8A, 0x91, 0x7C, 0xC3, 0x0A, 0x45,
                                /* 0008 */   0x9D, 0x0F, 0xF4, 0x7A, 0xB9, 0x7C, 0x3D, 0xEA
                            }))
                    {
                        Return (0x0101)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xD8, 0x7B, 0x3B, 0xEA, 0x9B, 0xE0, 0x39, 0x42,
                                /* 0008 */   0xAD, 0x6E, 0xED, 0x52, 0x5F, 0x3F, 0x26, 0xAB
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x92, 0xC4, 0x5A, 0xB6, 0x30, 0x9E, 0x60, 0x4D,
                                /* 0008 */   0xB5, 0xB2, 0xF4, 0x97, 0xC7, 0x90, 0xD9, 0xCF
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x0F, 0xAB, 0x70, 0xE7, 0x44, 0x26, 0xAB, 0x4B,
                                /* 0008 */   0x86, 0x28, 0xD6, 0x2F, 0x16, 0x83, 0xFB, 0x9D
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xB2, 0x4A, 0xA5, 0x1E, 0x84, 0xCD, 0xCC, 0x48,
                                /* 0008 */   0x9D, 0xD4, 0x7F, 0x59, 0x4E, 0xC3, 0xB0, 0x15
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x51, 0x26, 0xBE, 0x8D, 0xC1, 0x70, 0x6F, 0x4C,
                                /* 0008 */   0xAC, 0x87, 0xA3, 0x7C, 0xB4, 0x6E, 0x4A, 0xF6
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x39, 0xA6, 0xC9, 0x75, 0x8A, 0x5C, 0x00, 0x4A,
                                /* 0008 */   0x9F, 0x48, 0xA9, 0xC3, 0xB5, 0xDA, 0x78, 0x9F
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x49, 0x75, 0x25, 0x26, 0x71, 0x92, 0xA4, 0x4C,
                                /* 0008 */   0xBB, 0x43, 0xC4, 0x89, 0x9D, 0x5A, 0x48, 0x81
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x04002400)
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x40, 0x46, 0x23, 0x79, 0x10, 0x9E, 0xEA, 0x4F,
                                /* 0008 */   0xA5, 0xC1, 0xB5, 0xAA, 0x8B, 0x19, 0x75, 0x6F
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x01001100)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM4)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33FB")  // _HID: Hardware ID
                Name (_CID, "INT33FB")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV2722")  // _DDN: DOS Device Name
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMI1
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28P, 
                    P18P, 
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */   0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (RCAS, 0x04), LEqual (PMID, 0x05)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0015
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        I2cSerialBus (0x0036, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x6A, 0xA7, 0x7B, 0x37, 0x90, 0xF3, 0xFF, 0x4A,
                                /* 0008 */   0xAB, 0x38, 0x9B, 0x1B, 0xF3, 0x3A, 0x30, 0x15
                            }))
                    {
                        Return ("INT33FB")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xAA, 0xAA, 0x62, 0x3C, 0xE0, 0xD8, 0x1A, 0x40,
                                /* 0008 */   0x84, 0xC3, 0xFC, 0x05, 0x65, 0x6F, 0xA2, 0x8C
                            }))
                    {
                        Return ("OV2722")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0xCE, 0x2A, 0x82, 0x14, 0x28, 0x74, 0x41,
                                /* 0008 */   0xA5, 0x6B, 0x5F, 0x02, 0x9F, 0xE0, 0x79, 0xEE
                            }))
                    {
                        Return ("13P2SF206")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x2A, 0x51, 0x59, 0x29, 0x8C, 0x02, 0x46, 0x46,
                                /* 0008 */   0xB7, 0x3D, 0x4D, 0x1B, 0x56, 0x72, 0xFA, 0xD8
                            }))
                    {
                        If (LEqual (BDID, 0x04))
                        {
                            If (LEqual (FBID, 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If (LEqual (FBID, 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x42, 0xB2, 0x8A, 0x91, 0x7C, 0xC3, 0x0A, 0x45,
                                /* 0008 */   0x9D, 0x0F, 0xF4, 0x7A, 0xB9, 0x7C, 0x3D, 0xEA
                            }))
                    {
                        Return (0x0101)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xD8, 0x7B, 0x3B, 0xEA, 0x9B, 0xE0, 0x39, 0x42,
                                /* 0008 */   0xAD, 0x6E, 0xED, 0x52, 0x5F, 0x3F, 0x26, 0xAB
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x92, 0xC4, 0x5A, 0xB6, 0x30, 0x9E, 0x60, 0x4D,
                                /* 0008 */   0xB5, 0xB2, 0xF4, 0x97, 0xC7, 0x90, 0xD9, 0xCF
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x0F, 0xAB, 0x70, 0xE7, 0x44, 0x26, 0xAB, 0x4B,
                                /* 0008 */   0x86, 0x28, 0xD6, 0x2F, 0x16, 0x83, 0xFB, 0x9D
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xB2, 0x4A, 0xA5, 0x1E, 0x84, 0xCD, 0xCC, 0x48,
                                /* 0008 */   0x9D, 0xD4, 0x7F, 0x59, 0x4E, 0xC3, 0xB0, 0x15
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x51, 0x26, 0xBE, 0x8D, 0xC1, 0x70, 0x6F, 0x4C,
                                /* 0008 */   0xAC, 0x87, 0xA3, 0x7C, 0xB4, 0x6E, 0x4A, 0xF6
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x39, 0xA6, 0xC9, 0x75, 0x8A, 0x5C, 0x00, 0x4A,
                                /* 0008 */   0x9F, 0x48, 0xA9, 0xC3, 0xB5, 0xDA, 0x78, 0x9F
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x49, 0x75, 0x25, 0x26, 0x71, 0x92, 0xA4, 0x4C,
                                /* 0008 */   0xBB, 0x43, 0xC4, 0x89, 0x9D, 0x5A, 0x48, 0x81
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x03003600)
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x40, 0x46, 0x23, 0x79, 0x10, 0x9E, 0xEA, 0x4F,
                                /* 0008 */   0xA5, 0xC1, 0xB5, 0xAA, 0x8B, 0x19, 0x75, 0x6F
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x1500)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x01001101)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM8)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33BE")  // _HID: Hardware ID
                Name (_CID, "INT33BE")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV5693")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMI1
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28P, 
                    P18P, 
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */   0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (RCAS, 0x02), LEqual (PMID, 0x05)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0015
                            }
                        I2cSerialBus (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                        I2cSerialBus (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x6A, 0xA7, 0x7B, 0x37, 0x90, 0xF3, 0xFF, 0x4A,
                                /* 0008 */   0xAB, 0x38, 0x9B, 0x1B, 0xF3, 0x3A, 0x30, 0x15
                            }))
                    {
                        Return ("INT33BE")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xAA, 0xAA, 0x62, 0x3C, 0xE0, 0xD8, 0x1A, 0x40,
                                /* 0008 */   0x84, 0xC3, 0xFC, 0x05, 0x65, 0x6F, 0xA2, 0x8C
                            }))
                    {
                        Return ("OV5693")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0xCE, 0x2A, 0x82, 0x14, 0x28, 0x74, 0x41,
                                /* 0008 */   0xA5, 0x6B, 0x5F, 0x02, 0x9F, 0xE0, 0x79, 0xEE
                            }))
                    {
                        Return ("12P2BA536")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x2A, 0x51, 0x59, 0x29, 0x8C, 0x02, 0x46, 0x46,
                                /* 0008 */   0xB7, 0x3D, 0x4D, 0x1B, 0x56, 0x72, 0xFA, 0xD8
                            }))
                    {
                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x42, 0xB2, 0x8A, 0x91, 0x7C, 0xC3, 0x0A, 0x45,
                                /* 0008 */   0x9D, 0x0F, 0xF4, 0x7A, 0xB9, 0x7C, 0x3D, 0xEA
                            }))
                    {
                        Return (0x0102)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xD8, 0x7B, 0x3B, 0xEA, 0x9B, 0xE0, 0x39, 0x42,
                                /* 0008 */   0xAD, 0x6E, 0xED, 0x52, 0x5F, 0x3F, 0x26, 0xAB
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x92, 0xC4, 0x5A, 0xB6, 0x30, 0x9E, 0x60, 0x4D,
                                /* 0008 */   0xB5, 0xB2, 0xF4, 0x97, 0xC7, 0x90, 0xD9, 0xCF
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x0F, 0xAB, 0x70, 0xE7, 0x44, 0x26, 0xAB, 0x4B,
                                /* 0008 */   0x86, 0x28, 0xD6, 0x2F, 0x16, 0x83, 0xFB, 0x9D
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xB2, 0x4A, 0xA5, 0x1E, 0x84, 0xCD, 0xCC, 0x48,
                                /* 0008 */   0x9D, 0xD4, 0x7F, 0x59, 0x4E, 0xC3, 0xB0, 0x15
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x51, 0x26, 0xBE, 0x8D, 0xC1, 0x70, 0x6F, 0x4C,
                                /* 0008 */   0xAC, 0x87, 0xA3, 0x7C, 0xB4, 0x6E, 0x4A, 0xF6
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x39, 0xA6, 0xC9, 0x75, 0x8A, 0x5C, 0x00, 0x4A,
                                /* 0008 */   0x9F, 0x48, 0xA9, 0xC3, 0xB5, 0xDA, 0x78, 0x9F
                            }))
                    {
                        Return ("AD5823")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x49, 0x75, 0x25, 0x26, 0x71, 0x92, 0xA4, 0x4C,
                                /* 0008 */   0xBB, 0x43, 0xC4, 0x89, 0x9D, 0x5A, 0x48, 0x81
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x03001000)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x03000C01)
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x40, 0x46, 0x23, 0x79, 0x10, 0x9E, 0xEA, 0x4F,
                                /* 0008 */   0xA5, 0xC1, 0xB5, 0xAA, 0x8B, 0x19, 0x75, 0x6F
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x01001100)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x00011501)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM9)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F3")  // _HID: Hardware ID
                Name (_CID, "INT33F3")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "AR0543")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMI1
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28P, 
                    P18P, 
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */   0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (RCAS, 0x03), LEqual (PMID, 0x05)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0015
                            }
                        I2cSerialBus (0x0036, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                        I2cSerialBus (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                        I2cSerialBus (0x0054, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x6A, 0xA7, 0x7B, 0x37, 0x90, 0xF3, 0xFF, 0x4A,
                                /* 0008 */   0xAB, 0x38, 0x9B, 0x1B, 0xF3, 0x3A, 0x30, 0x15
                            }))
                    {
                        Return ("INT33F3")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xAA, 0xAA, 0x62, 0x3C, 0xE0, 0xD8, 0x1A, 0x40,
                                /* 0008 */   0x84, 0xC3, 0xFC, 0x05, 0x65, 0x6F, 0xA2, 0x8C
                            }))
                    {
                        Return ("AR0543")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0xCE, 0x2A, 0x82, 0x14, 0x28, 0x74, 0x41,
                                /* 0008 */   0xA5, 0x6B, 0x5F, 0x02, 0x9F, 0xE0, 0x79, 0xEE
                            }))
                    {
                        Return ("13P2BA522")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x2A, 0x51, 0x59, 0x29, 0x8C, 0x02, 0x46, 0x46,
                                /* 0008 */   0xB7, 0x3D, 0x4D, 0x1B, 0x56, 0x72, 0xFA, 0xD8
                            }))
                    {
                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x42, 0xB2, 0x8A, 0x91, 0x7C, 0xC3, 0x0A, 0x45,
                                /* 0008 */   0x9D, 0x0F, 0xF4, 0x7A, 0xB9, 0x7C, 0x3D, 0xEA
                            }))
                    {
                        Return (0x0102)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xD8, 0x7B, 0x3B, 0xEA, 0x9B, 0xE0, 0x39, 0x42,
                                /* 0008 */   0xAD, 0x6E, 0xED, 0x52, 0x5F, 0x3F, 0x26, 0xAB
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x92, 0xC4, 0x5A, 0xB6, 0x30, 0x9E, 0x60, 0x4D,
                                /* 0008 */   0xB5, 0xB2, 0xF4, 0x97, 0xC7, 0x90, 0xD9, 0xCF
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x0F, 0xAB, 0x70, 0xE7, 0x44, 0x26, 0xAB, 0x4B,
                                /* 0008 */   0x86, 0x28, 0xD6, 0x2F, 0x16, 0x83, 0xFB, 0x9D
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xB2, 0x4A, 0xA5, 0x1E, 0x84, 0xCD, 0xCC, 0x48,
                                /* 0008 */   0x9D, 0xD4, 0x7F, 0x59, 0x4E, 0xC3, 0xB0, 0x15
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x51, 0x26, 0xBE, 0x8D, 0xC1, 0x70, 0x6F, 0x4C,
                                /* 0008 */   0xAC, 0x87, 0xA3, 0x7C, 0xB4, 0x6E, 0x4A, 0xF6
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x39, 0xA6, 0xC9, 0x75, 0x8A, 0x5C, 0x00, 0x4A,
                                /* 0008 */   0x9F, 0x48, 0xA9, 0xC3, 0xB5, 0xDA, 0x78, 0x9F
                            }))
                    {
                        Return ("AD5823")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x49, 0x75, 0x25, 0x26, 0x71, 0x92, 0xA4, 0x4C,
                                /* 0008 */   0xBB, 0x43, 0xC4, 0x89, 0x9D, 0x5A, 0x48, 0x81
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x03)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x03003600)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x03000C01)
                        }

                        If (LEqual (Arg2, 0x04))
                        {
                            Return (0x03005402)
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x40, 0x46, 0x23, 0x79, 0x10, 0x9E, 0xEA, 0x4F,
                                /* 0008 */   0xA5, 0xC1, 0xB5, 0xAA, 0x8B, 0x19, 0x75, 0x6F
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x01001100)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x01001501)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT5648")  // _HID: Hardware ID
                Name (_CID, "INT5648")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV5648")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMI1
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28P, 
                    P18P, 
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */   0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (RCAS, One), LEqual (PMID, 0x05)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0015
                            }
                        I2cSerialBus (0x0036, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                        I2cSerialBus (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x6A, 0xA7, 0x7B, 0x37, 0x90, 0xF3, 0xFF, 0x4A,
                                /* 0008 */   0xAB, 0x38, 0x9B, 0x1B, 0xF3, 0x3A, 0x30, 0x15
                            }))
                    {
                        Return ("INT5648")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xAA, 0xAA, 0x62, 0x3C, 0xE0, 0xD8, 0x1A, 0x40,
                                /* 0008 */   0x84, 0xC3, 0xFC, 0x05, 0x65, 0x6F, 0xA2, 0x8C
                            }))
                    {
                        Return ("OV5648")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0xCE, 0x2A, 0x82, 0x14, 0x28, 0x74, 0x41,
                                /* 0008 */   0xA5, 0x6B, 0x5F, 0x02, 0x9F, 0xE0, 0x79, 0xEE
                            }))
                    {
                        Return ("MTD5648")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x2A, 0x51, 0x59, 0x29, 0x8C, 0x02, 0x46, 0x46,
                                /* 0008 */   0xB7, 0x3D, 0x4D, 0x1B, 0x56, 0x72, 0xFA, 0xD8
                            }))
                    {
                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x42, 0xB2, 0x8A, 0x91, 0x7C, 0xC3, 0x0A, 0x45,
                                /* 0008 */   0x9D, 0x0F, 0xF4, 0x7A, 0xB9, 0x7C, 0x3D, 0xEA
                            }))
                    {
                        Return (0x0102)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xD8, 0x7B, 0x3B, 0xEA, 0x9B, 0xE0, 0x39, 0x42,
                                /* 0008 */   0xAD, 0x6E, 0xED, 0x52, 0x5F, 0x3F, 0x26, 0xAB
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x92, 0xC4, 0x5A, 0xB6, 0x30, 0x9E, 0x60, 0x4D,
                                /* 0008 */   0xB5, 0xB2, 0xF4, 0x97, 0xC7, 0x90, 0xD9, 0xCF
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x0F, 0xAB, 0x70, 0xE7, 0x44, 0x26, 0xAB, 0x4B,
                                /* 0008 */   0x86, 0x28, 0xD6, 0x2F, 0x16, 0x83, 0xFB, 0x9D
                            }))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xB2, 0x4A, 0xA5, 0x1E, 0x84, 0xCD, 0xCC, 0x48,
                                /* 0008 */   0x9D, 0xD4, 0x7F, 0x59, 0x4E, 0xC3, 0xB0, 0x15
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x51, 0x26, 0xBE, 0x8D, 0xC1, 0x70, 0x6F, 0x4C,
                                /* 0008 */   0xAC, 0x87, 0xA3, 0x7C, 0xB4, 0x6E, 0x4A, 0xF6
                            }))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x39, 0xA6, 0xC9, 0x75, 0x8A, 0x5C, 0x00, 0x4A,
                                /* 0008 */   0x9F, 0x48, 0xA9, 0xC3, 0xB5, 0xDA, 0x78, 0x9F
                            }))
                    {
                        Return ("DW9714")
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x49, 0x75, 0x25, 0x26, 0x71, 0x92, 0xA4, 0x4C,
                                /* 0008 */   0xBB, 0x43, 0xC4, 0x89, 0x9D, 0x5A, 0x48, 0x81
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x03003600)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x03000C01)
                        }
                    }

                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x40, 0x46, 0x23, 0x79, 0x10, 0x9E, 0xEA, 0x4F,
                                /* 0008 */   0xA5, 0xC1, 0xB5, 0xAA, 0x8B, 0x19, 0x75, 0x6F
                            }))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x01001100)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x01001501)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CMSR)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "CPLM3232")  // _HID: Hardware ID
                Name (_CID, "CPLM3232")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (ALSS, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }

                Name (CPM0, Package (0x04)
                {
                    0x0CA0, 
                    Zero, 
                    One, 
                    0x06
                })
                Name (CPM1, Package (0x03)
                {
                    0x087A, 
                    0x001E8480, 
                    0x000186A0
                })
                Name (CPM2, Package (0x06)
                {
                    0x61A8, 
                    0x000186A0, 
                    0x000186A0, 
                    0x000186A0, 
                    0x00030D40, 
                    0x00030D40
                })
                Name (CPM3, Package (0x0C)
                {
                    Package (0x02)
                    {
                        0x0A, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x14, 
                        0x0A
                    }, 

                    Package (0x02)
                    {
                        0x1E, 
                        0x14
                    }, 

                    Package (0x02)
                    {
                        0x28, 
                        0x1E
                    }, 

                    Package (0x02)
                    {
                        0x32, 
                        0x28
                    }, 

                    Package (0x02)
                    {
                        0x3C, 
                        0x32
                    }, 

                    Package (0x02)
                    {
                        0x46, 
                        0x3C
                    }, 

                    Package (0x02)
                    {
                        0x50, 
                        0x46
                    }, 

                    Package (0x02)
                    {
                        0x5A, 
                        0x50
                    }, 

                    Package (0x02)
                    {
                        0x64, 
                        0x5A
                    }, 

                    Package (0x02)
                    {
                        0x64, 
                        0x64
                    }, 

                    Package (0x02)
                    {
                        0x64, 
                        0x012C
                    }
                })
                Name (CPM5, Package (0x07)
                {
                    Zero, 
                    0x0001BD50, 
                    0x0190, 
                    0x03E8, 
                    0x02, 
                    0x32, 
                    0x05
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xB6, 0xC6, 0x03, 0x07, 0xCA, 0x1C, 0x44, 0x41,
                                /* 0008 */   0x9F, 0xE7, 0x46, 0x54, 0xF5, 0x3A, 0x0B, 0xD9
                            }))
                    {
                        If (LEqual (Arg2, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03
                            })
                        }

                        If (LEqual (Arg2, One))
                        {
                            If (LEqual (ToInteger (Arg3), Zero))
                            {
                                Return (CPM0)
                            }

                            If (LEqual (ToInteger (Arg3), One))
                            {
                                Return (CPM1)
                            }

                            If (LEqual (ToInteger (Arg3), 0x02))
                            {
                                Return (CPM2)
                            }

                            If (LEqual (ToInteger (Arg3), 0x03))
                            {
                                Return (CPM3)
                            }

                            If (LEqual (ToInteger (Arg3), 0x05))
                            {
                                Return (CPM5)
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00
                    })
                }
            }

            Device (SALS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "JSA1212")  // _HID: Hardware ID
                Name (_CID, "INTLALS")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0044, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                        GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0006
                            }
                    })
                    Return (RBUF)
                }
            }

            Device (SENS)
            {
                Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                {
                    Return ("INVN6500")
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0068, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                        I2cSerialBus (0x000D, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                        GpioInt (Level, ActiveHigh, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                    })
                    Return (RBUF)
                }

                Name (CNF0, Package (0x04)
                {
                    Package (0x04)
                    {
                        "MPU6500", 
                        0x68, 
                        One, 
                        0x06
                    }, 

                    Package (0x04)
                    {
                        "MPU6500", 
                        0x68, 
                        One, 
                        0x06
                    }, 

                    Package (0x04)
                    {
                        "AK8963", 
                        0x0C, 
                        0x02, 
                        0x06
                    }, 

                    Package (0x01)
                    {
                        Buffer (0x5C)
                        {
                            /* 0000 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0008 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0018 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0020 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0028 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0030 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0038 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0040 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0048 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0050 */   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0058 */   0xFF, 0xFF, 0xFF, 0xFF
                        }
                    }
                })
                Method (CNFG, 0, NotSerialized)
                {
                    Return (CNF0)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }
            }

            Device (SPBM)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "AKM09911")  // _HID: Hardware ID
                Name (_CID, "Magnetometer")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (RBUF)
                }
            }

            Device (SPBG)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "BSBG0160")  // _HID: Hardware ID
                Name (_CID, "INTSPBG")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0068, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (RBUF)
                }
            }

            Device (SAR1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SPBP0001")  // _HID: Hardware ID
                Name (_CID, "SpbProximity")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0028, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                        GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0013
                            }
                    })
                    Return (RBUF)
                }
            }

            Device (ACC0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SMO8500")  // _HID: Hardware ID
                Name (_CID, "SMO8500")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x000F, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, ,
                            )
                        GpioInt (Level, ActiveHigh, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                    })
                    Return (SBUF)
                }
            }
        }

        Device (I2C4)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41")  // _HID: Hardware ID
            Name (_CID, "80860F41")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #4 - 80860F44")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1B)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000023,
                }
                FixedDMA (0x0016, 0x0006, Width32bit, )
                FixedDMA (0x0017, 0x0007, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C4._Y1B._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C4._Y1B._LEN, B0LN)  // _LEN: Length
                Store (I40A, B0BA)
                Store (I40L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I40A, Zero), LEqual (L24D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I41A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (TCS0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "FTSC1000")  // _HID: Hardware ID
                Name (_CID, "PNP0C50")  // _CID: Compatible ID
                Name (_HRV, One)  // _HRV: Hardware Revision
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x03)  // _DEP: Dependencies
                {
                    GPO1, 
                    I2C5, 
                    ^^I2C5.PMI1
                })
                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If (LEqual (^^^I2C5.PMI1.AVBG, One))
                    {
                        Store (Zero, ^^^I2C5.PMI1.TCON)
                    }
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (^^^GPO1.AVBL, One))
                    {
                        Store (Zero, ^^^GPO1.TCD3)
                    }

                    Sleep (0x05)
                    If (LEqual (^^^I2C5.PMI1.AVBG, One))
                    {
                        Store (One, ^^^I2C5.PMI1.TCON)
                    }

                    Sleep (0x1E)
                    If (LEqual (^^^GPO1.AVBL, One))
                    {
                        Store (One, ^^^GPO1.TCD3)
                    }

                    Sleep (0x78)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0038, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000044,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x001A
                            }
                    })
                    Return (RBUF)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store ("Method _DSM begin", Debug)
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xF7, 0xF6, 0xDF, 0x3C, 0x67, 0x42, 0x55, 0x45,
                                /* 0008 */   0xAD, 0x05, 0xB3, 0x0A, 0x3D, 0x89, 0x38, 0xDE
                            }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_0)
                            If (LEqual (_T_0, Zero))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Store ("Method _DSM Function Query", Debug)
                                        Return (Buffer (One)
                                        {
                                             0x03
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00
                                        })
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_0, One))
                                {
                                    Store ("Method _DSM Function HID", Debug)
                                    Return (Zero)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (TCS1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "NTRG0F04")  // _HID: Hardware ID
                Name (_CID, "PNP0C50")  // _CID: Compatible ID
                Name (_UID, 0x03)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0007, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000044,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x001A
                            }
                    })
                    Return (RBUF)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store ("Method _DSM begin", Debug)
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0xF7, 0xF6, 0xDF, 0x3C, 0x67, 0x42, 0x55, 0x45,
                                /* 0008 */   0xAD, 0x05, 0xB3, 0x0A, 0x3D, 0x89, 0x38, 0xDE
                            }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_0)
                            If (LEqual (_T_0, Zero))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Store ("Method _DSM Function Query", Debug)
                                        Return (Buffer (One)
                                        {
                                             0x03
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00
                                        })
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_0, One))
                                {
                                    Store ("Method _DSM Function HID", Debug)
                                    Return (One)
                                }
                                Else
                                {
                                }
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }
        }

        Device (I2C5)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41")  // _HID: Hardware ID
            Name (_CID, "80860F41")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #5 - 80860F45")  // _DDN: DOS Device Name
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_SEM, 0, NotSerialized)
            {
                If (LOr (LOr (LEqual (PMID, 0x04), LEqual (PMID, 0x05)), LEqual (
                    PMID, 0x06)))
                {
                    ADBG ("$COVE")
                    Return (One)
                }
                Else
                {
                    ADBG ("CCOVE")
                    Return (Zero)
                }
            }

            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1C)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000024,
                }
                FixedDMA (0x0018, 0x0000, Width32bit, )
                FixedDMA (0x0019, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C5._Y1C._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C5._Y1C._LEN, B0LN)  // _LEN: Length
                Store (I50A, B0BA)
                Store (I50L, B0LN)
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I50A, Zero), LEqual (L25D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (LOr (LOr (LEqual (PMID, 0x04), LEqual (PMID, 0x05)), LEqual (
                    PMID, 0x06)))
                {
                    Return (Zero)
                }

                Or (PSAT, 0x03, PSAT)
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT)
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I51A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Name (XPMC, ResourceTemplate ()
            {
                I2cSerialBus (0x0034, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C5",
                    0x00, ResourceConsumer, ,
                    )
            })
            OperationRegion (XSCG, GenericSerialBus, Zero, 0x0100)
            Field (XSCG, BufferAcc, NoLock, Preserve)
            {
                Connection (XPMC), 
                AccessAs (BufferAcc, AttribByte), 
                XP00,   8, 
                XP01,   8
            }

            Field (XSCG, BufferAcc, NoLock, Preserve)
            {
                Connection (XPMC), 
                Offset (0xB9), 
                AccessAs (BufferAcc, AttribByte), 
                XPB9,   8
            }

            Field (XSCG, BufferAcc, NoLock, Preserve)
            {
                Connection (XPMC), 
                Offset (0x2C), 
                AccessAs (BufferAcc, AttribByte), 
                XP2C,   8, 
                XP2D,   8, 
                XP2E,   8, 
                XP2F,   8, 
                XP30,   8, 
                XP31,   8, 
                XP32,   8
            }

            Field (XSCG, BufferAcc, NoLock, Preserve)
            {
                Connection (XPMC), 
                Offset (0x2C), 
                AccessAs (BufferAcc, AttribBytes (0x0A)), 
                XPCG,   8
            }

            Field (XSCG, BufferAcc, NoLock, Preserve)
            {
                Connection (XPMC), 
                Offset (0x33), 
                AccessAs (BufferAcc, AttribBytes (0x0A)), 
                CHG1,   8
            }

            Field (XSCG, BufferAcc, NoLock, Preserve)
            {
                Connection (XPMC), 
                Offset (0x7A), 
                AccessAs (BufferAcc, AttribByte), 
                BCCH,   8
            }

            Field (XSCG, BufferAcc, NoLock, Preserve)
            {
                Connection (XPMC), 
                Offset (0x7B), 
                AccessAs (BufferAcc, AttribByte), 
                BCCL,   8
            }

            Field (XSCG, BufferAcc, NoLock, Preserve)
            {
                Connection (XPMC), 
                Offset (0x12), 
                AccessAs (BufferAcc, AttribByte), 
                OPPC,   8
            }

            Field (XSCG, BufferAcc, NoLock, Preserve)
            {
                Connection (XPMC), 
                Offset (0x8A), 
                AccessAs (BufferAcc, AttribByte), 
                TM8A,   8
            }
        }

        Scope (I2C5)
        {
            Device (PMI1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F4")  // _HID: Hardware ID
                Name (_CID, "INT33F4")  // _CID: Compatible ID
                Name (_DDN, "XPOWER PMIC Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x02)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C5
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0034, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PMEN, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (PMID, 0x05))
                    {
                        ADBG ("XPWR_DCOVE")
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    ALD1,   32, 
                    ALD2,   32, 
                    ALD3,   32, 
                    DLD1,   32, 
                    DLD2,   32, 
                    DLD3,   32, 
                    DLD4,   32, 
                    ELD1,   32, 
                    ELD2,   32, 
                    ELD3,   32, 
                    FLD1,   32, 
                    FLD2,   32, 
                    FLD3,   32, 
                    BUC1,   32, 
                    BUC2,   32, 
                    BUC3,   32, 
                    BUC4,   32, 
                    BUC5,   32, 
                    BUC6,   32, 
                    GPI1,   32
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32, 
                    AX00,   32, 
                    AX01,   32, 
                    TMP1,   32, 
                    AX10,   32, 
                    AX11,   32, 
                    TMP2,   32, 
                    AX20,   32, 
                    AX21,   32, 
                    TMP3,   32, 
                    AX30,   32, 
                    AX31,   32, 
                    TMP4,   32, 
                    AX40,   32, 
                    AX41,   32, 
                    TMP5,   32, 
                    AX50,   32, 
                    AX51,   32, 
                    PEN0,   32, 
                    PEN1,   32, 
                    PEN2,   32, 
                    PEN3,   32, 
                    PEN4,   32, 
                    PEN5,   32
                }

                Name (LPAT, Package (0x44)
                {
                    0x091B, 
                    0x3CFB, 
                    0x094D, 
                    0x2DFD, 
                    0x097F, 
                    0x2304, 
                    0x09B1, 
                    0x1AE7, 
                    0x09E3, 
                    0x14DA, 
                    0x0A15, 
                    0x104B, 
                    0x0A47, 
                    0x0CD6, 
                    0x0A79, 
                    0x0A2F, 
                    0x0AAB, 
                    0x0824, 
                    0x0ADD, 
                    0x068E, 
                    0x0B0F, 
                    0x054F, 
                    0x0B41, 
                    0x0454, 
                    0x0B73, 
                    0x038D, 
                    0x0BA5, 
                    0x02EE, 
                    0x0BD7, 
                    0x026E, 
                    0x0C09, 
                    0x0206, 
                    0x0C3B, 
                    0x01B2, 
                    0x0C6D, 
                    0x016E, 
                    0x0C9F, 
                    0x0135, 
                    0x0CD1, 
                    0x0107, 
                    0x0D03, 
                    0xE0, 
                    0x0D35, 
                    0xC0, 
                    0x0D67, 
                    0xA5, 
                    0x0D99, 
                    0x8F, 
                    0x0DCB, 
                    0x7C, 
                    0x0DFD, 
                    0x6C, 
                    0x0E2F, 
                    0x5E, 
                    0x0E61, 
                    0x52, 
                    0x0E93, 
                    0x48, 
                    0x0EC5, 
                    0x40, 
                    0x0EF7, 
                    0x39, 
                    0x0F29, 
                    0x32, 
                    0x0F5B, 
                    0x2D, 
                    0x0F8D, 
                    0x28
                })
                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ), 
                    GMP0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ), 
                    GX00,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ), 
                    GX01,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ), 
                    GMP1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ), 
                    GX10,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ), 
                    GX11,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ), 
                    GMP2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ), 
                    GX20,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ), 
                    GX21,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ), 
                    GMP3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ), 
                    GX30,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ), 
                    GX31,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ), 
                    GMP4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ), 
                    GX40,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ), 
                    GX41,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ), 
                    GMP5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ), 
                    GX50,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ), 
                    GX51,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ), 
                    GEN0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ), 
                    GEN1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ), 
                    GEN2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ), 
                    GEN3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ), 
                    GEN4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ), 
                    GEN5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    ), 
                    G28X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0045
                            }
                    ), 
                    GD3X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ), 
                    G18X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0053
                            }
                    ), 
                    GSDX,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000B
                            }
                    ), 
                    TCON,   1
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x08))
                    {
                        Store (Arg1, AVBG)
                    }

                    If (LEqual (Arg0, 0x8D))
                    {
                        Store (Arg1, AVBL)
                    }

                    If (LEqual (Arg0, 0x8C))
                    {
                        Store (Arg1, AVBD)
                    }
                }

                Name (TMBU, Buffer (0x03)
                {
                     0x00, 0x01, 0x00
                })
                CreateByteField (TMBU, Zero, TMST)
                CreateByteField (TMBU, 0x02, TMDT)
                Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Level, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                    })
                    Return (RBUF)
                }

                Method (_L19, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                {
                    ADBG ("timer")
                    If (LEqual (^^BMDR.AVBL, One))
                    {
                        Store (TM8A, TMBU)
                        Or (TMDT, 0x80, TMDT)
                        Store (TMBU, TM8A)
                        Store (TM8A, TMBU)
                    }

                    If (CondRefOf (\_SB.I2C5.BMBT, Local1))
                    {
                        Notify (BMBT, 0x80)
                    }

                    Notify (^^^DPTF, 0x86)
                }
            }

            Device (PMI2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F5")  // _HID: Hardware ID
                Name (_CID, "INT33F5")  // _CID: Compatible ID
                Name (_DDN, "TI PMIC Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x02)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C5
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x005E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PMEN, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (PMID, 0x06))
                    {
                        ADBG ("TI_DCOVE")
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    LDO1,   32, 
                    LDO2,   32, 
                    LDO3,   32, 
                    LDO5,   32, 
                    LDO6,   32, 
                    LDO7,   32, 
                    LDO8,   32, 
                    LDO9,   32, 
                    LD10,   32, 
                    LD11,   32, 
                    LD12,   32, 
                    LD13,   32, 
                    LD14,   32
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32, 
                    AX00,   32, 
                    AX01,   32, 
                    TMP1,   32, 
                    AX10,   32, 
                    AX11,   32, 
                    TMP2,   32, 
                    AX20,   32, 
                    AX21,   32, 
                    TMP3,   32, 
                    AX30,   32, 
                    AX31,   32, 
                    TMP4,   32, 
                    AX40,   32, 
                    AX41,   32, 
                    TMP5,   32, 
                    AX50,   32, 
                    AX51,   32, 
                    PEN0,   32, 
                    PEN1,   32, 
                    PEN2,   32, 
                    PEN3,   32, 
                    PEN4,   32, 
                    PEN5,   32
                }

                Name (LPAT, Package (0x44)
                {
                    0x091B, 
                    0x03F1, 
                    0x094D, 
                    0x03EB, 
                    0x097F, 
                    0x03E4, 
                    0x09B1, 
                    0x03DA, 
                    0x09E3, 
                    0x03CE, 
                    0x0A15, 
                    0x03BE, 
                    0x0A47, 
                    0x03AA, 
                    0x0A79, 
                    0x0392, 
                    0x0AAB, 
                    0x0375, 
                    0x0ADD, 
                    0x0353, 
                    0x0B0F, 
                    0x032C, 
                    0x0B41, 
                    0x0300, 
                    0x0B73, 
                    0x02D0, 
                    0x0BA5, 
                    0x029D, 
                    0x0BD7, 
                    0x0268, 
                    0x0C09, 
                    0x0232, 
                    0x0C3B, 
                    0x01FD, 
                    0x0C6D, 
                    0x01C9, 
                    0x0C9F, 
                    0x0197, 
                    0x0CD1, 
                    0x0169, 
                    0x0D03, 
                    0x013E, 
                    0x0D35, 
                    0x0117, 
                    0x0D67, 
                    0xF5, 
                    0x0D99, 
                    0xD6, 
                    0x0DCB, 
                    0xBB, 
                    0x0DFD, 
                    0xA3, 
                    0x0E2F, 
                    0x8E, 
                    0x0E61, 
                    0x7C, 
                    0x0E93, 
                    0x6C, 
                    0x0EC5, 
                    0x5E, 
                    0x0EF7, 
                    0x53, 
                    0x0F29, 
                    0x48, 
                    0x0F5B, 
                    0x3F, 
                    0x0F8D, 
                    0x38
                })
                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ), 
                    GMP0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ), 
                    GX00,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ), 
                    GX01,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ), 
                    GMP1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ), 
                    GX10,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ), 
                    GX11,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ), 
                    GMP2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ), 
                    GX20,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ), 
                    GX21,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ), 
                    GMP3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ), 
                    GX30,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ), 
                    GX31,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ), 
                    GMP4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ), 
                    GX40,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ), 
                    GX41,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ), 
                    GMP5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ), 
                    GX50,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ), 
                    GX51,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ), 
                    GEN0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ), 
                    GEN1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ), 
                    GEN2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ), 
                    GEN3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ), 
                    GEN4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ), 
                    GEN5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0045
                            }
                    ), 
                    GSDX,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0047
                            }
                    ), 
                    G28X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ), 
                    G18X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0049
                            }
                    ), 
                    G18U,   1
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x08))
                    {
                        Store (Arg1, AVBG)
                    }

                    If (LEqual (Arg0, 0x8D))
                    {
                        Store (Arg1, AVBL)
                    }

                    If (LEqual (Arg0, 0x8C))
                    {
                        Store (Arg1, AVBD)
                    }
                }
            }

            Device (PMIF)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "DMY0001")  // _HID: Hardware ID
                Name (_CID, "DMY0001")  // _CID: Compatible ID
                Name (_DDN, "Dummy PMIC controller")  // _DDN: DOS Device Name
                Name (_HRV, Zero)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C5
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x005E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PMEN, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (PMID, 0xFE))
                    {
                        ADBG ("DMPMIC")
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (PMIC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33FD")  // _HID: Hardware ID
                Name (_CID, "INT33FD")  // _CID: Compatible ID
                Name (_DDN, "PMIC GPIO Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x02)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C5
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x006E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PMEN, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (PMID, One))
                    {
                        ADBG ("CCPMIC")
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32, 
                    AX00,   32, 
                    AX01,   32, 
                    TMP1,   32, 
                    AX10,   32, 
                    AX11,   32, 
                    TMP2,   32, 
                    AX20,   32, 
                    AX21,   32, 
                    TMP3,   32, 
                    AX30,   32, 
                    AX31,   32, 
                    TMP4,   32, 
                    AX40,   32, 
                    AX41,   32, 
                    TMP5,   32, 
                    AX50,   32, 
                    AX51,   32, 
                    PEN0,   32, 
                    PEN1,   32, 
                    PEN2,   32, 
                    PEN3,   32, 
                    PEN4,   32, 
                    PEN5,   32
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    VSYS,   32, 
                    SYSX,   32, 
                    SYSU,   32, 
                    SYSS,   32, 
                    V50S,   32, 
                    HOST,   32, 
                    VBUS,   32, 
                    HDMI,   32, 
                    S285,   32, 
                    X285,   32, 
                    V33A,   32, 
                    V33S,   32, 
                    V33U,   32, 
                    V33I,   32, 
                    V18A,   32, 
                    REFQ,   32, 
                    V12A,   32, 
                    V18S,   32, 
                    V18X,   32, 
                    V18U,   32, 
                    V12X,   32, 
                    V12S,   32, 
                    V10A,   32, 
                    V10S,   32, 
                    V10X,   32, 
                    V105,   32
                }

                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ), 
                    GMP0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ), 
                    GX00,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ), 
                    GX01,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ), 
                    GMP1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ), 
                    GX10,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ), 
                    GX11,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ), 
                    GMP2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ), 
                    GX20,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ), 
                    GX21,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ), 
                    GMP3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ), 
                    GX30,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ), 
                    GX31,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ), 
                    GMP4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ), 
                    GX40,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ), 
                    GX41,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ), 
                    GMP5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ), 
                    GX50,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ), 
                    GX51,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ), 
                    GEN0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ), 
                    GEN1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ), 
                    GEN2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ), 
                    GEN3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ), 
                    GEN4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ), 
                    GEN5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    ), 
                    GSYS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0041
                            }
                    ), 
                    GYSX,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0042
                            }
                    ), 
                    GYSU,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0043
                            }
                    ), 
                    GYSS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0044
                            }
                    ), 
                    G50S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0045
                            }
                    ), 
                    GOST,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0046
                            }
                    ), 
                    GBUS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0047
                            }
                    ), 
                    GDMI,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ), 
                    G28S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0049
                            }
                    ), 
                    G28X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004A
                            }
                    ), 
                    G33A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004B
                            }
                    ), 
                    G33S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004C
                            }
                    ), 
                    G33U,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    ), 
                    G33I,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004E
                            }
                    ), 
                    G18A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004F
                            }
                    ), 
                    GEFQ,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0050
                            }
                    ), 
                    G12A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0051
                            }
                    ), 
                    G18S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0052
                            }
                    ), 
                    G18X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0053
                            }
                    ), 
                    G18U,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0054
                            }
                    ), 
                    G12X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0055
                            }
                    ), 
                    G12S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0056
                            }
                    ), 
                    G10A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0057
                            }
                    ), 
                    G10S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0058
                            }
                    ), 
                    G10X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0059
                            }
                    ), 
                    G105,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005E
                            }
                    ), 
                    FCOT,   1
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x08))
                    {
                        Store (Arg1, AVBG)
                    }

                    If (LEqual (Arg0, 0x8D))
                    {
                        Store (Arg1, AVBL)
                    }

                    If (LEqual (Arg0, 0x8C))
                    {
                        Store (Arg1, AVBD)
                    }
                }

                Name (LPAT, Package (0x30)
                {
                    0x09E3, 
                    0x03D1, 
                    0x0A15, 
                    0x03C1, 
                    0x0A47, 
                    0x03AD, 
                    0x0A79, 
                    0x0395, 
                    0x0AAB, 
                    0x0377, 
                    0x0ADD, 
                    0x0355, 
                    0x0B0F, 
                    0x032D, 
                    0x0B41, 
                    0x0301, 
                    0x0B73, 
                    0x02D0, 
                    0x0BA5, 
                    0x029D, 
                    0x0BD7, 
                    0x0267, 
                    0x0C09, 
                    0x0231, 
                    0x0C3B, 
                    0x01FC, 
                    0x0C6D, 
                    0x01C8, 
                    0x0C9F, 
                    0x0197, 
                    0x0CD1, 
                    0x0165, 
                    0x0D03, 
                    0x013B, 
                    0x0D35, 
                    0x0115, 
                    0x0D67, 
                    0xF3, 
                    0x0D99, 
                    0xD4, 
                    0x0DCB, 
                    0xBA, 
                    0x0DFD, 
                    0xA2, 
                    0x0E2F, 
                    0x8C, 
                    0x0E93, 
                    0x6B
                })
            }
        }

        Scope (I2C1)
        {
            Device (IMP3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0003")  // _HID: Hardware ID
                Name (_CID, "IMPJ0003")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PSSD, 0x02))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C1",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF)
                }
            }
        }

        PowerResource (P28X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                ^I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^I2C5.PMIC.AVBG, One))
                {
                    Store (Zero, ^^I2C5.PMIC.G28X)
                    If (LEqual (^^I2C5.PMIC.AVBL, One))
                    {
                        Return (^^I2C5.PMIC.X285)
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (^^I2C5.PMIC.AVBL, One))
                {
                    Store (One, ^^I2C5.PMIC.X285)
                    If (LEqual (^^I2C5.PMIC.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMIC.G28X)
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (^^I2C5.PMIC.AVBL, One))
                {
                    Store (Zero, ^^I2C5.PMIC.X285)
                    If (LEqual (^^I2C5.PMIC.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMIC.G28X)
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                ^I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^I2C5.PMIC.AVBG, One))
                {
                    Store (Zero, ^^I2C5.PMIC.G18X)
                    If (LEqual (^^I2C5.PMIC.AVBL, One))
                    {
                        Return (^^I2C5.PMIC.V18X)
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (^^I2C5.PMIC.AVBL, One))
                {
                    Store (One, ^^I2C5.PMIC.V18X)
                    If (LEqual (^^I2C5.PMIC.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMIC.G18X)
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (^^I2C5.PMIC.AVBL, One))
                {
                    Store (Zero, ^^I2C5.PMIC.V18X)
                    If (LEqual (^^I2C5.PMIC.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMIC.G18X)
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P28P, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                ^I2C5.PMI1
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^I2C5.PMI1.AVBG, One))
                {
                    Store (Zero, ^^I2C5.PMI1.G28X)
                    If (LEqual (^^I2C5.PMI1.AVBL, One))
                    {
                        Return (^^I2C5.PMI1.ALD1)
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (^^I2C5.PMI1.AVBL, One))
                {
                    Store (One, ^^I2C5.PMI1.ALD1)
                    If (LEqual (^^I2C5.PMI1.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI1.G28X)
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (^^I2C5.PMI1.AVBL, One))
                {
                    Store (Zero, ^^I2C5.PMI1.ALD1)
                    If (LEqual (^^I2C5.PMI1.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI1.G28X)
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18P, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                ^I2C5.PMI1
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^I2C5.PMI1.AVBG, One))
                {
                    Store (Zero, ^^I2C5.PMI1.G18X)
                    If (LEqual (^^I2C5.PMI1.AVBL, One))
                    {
                        Return (^^I2C5.PMI1.ELD2)
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (^^I2C5.PMI1.AVBL, One))
                {
                    Store (One, ^^I2C5.PMI1.ELD2)
                    If (LEqual (^^I2C5.PMI1.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI1.G18X)
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (^^I2C5.PMI1.AVBL, One))
                {
                    Store (Zero, ^^I2C5.PMI1.ELD2)
                    If (LEqual (^^I2C5.PMI1.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI1.G18X)
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P28T, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                ^I2C5.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^I2C5.PMI2.AVBG, One))
                {
                    Store (Zero, ^^I2C5.PMI2.G28X)
                    If (LEqual (^^I2C5.PMI2.AVBL, One))
                    {
                        Return (^^I2C5.PMI2.LDO9)
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (^^I2C5.PMI2.AVBL, One))
                {
                    Store (One, ^^I2C5.PMI2.LDO9)
                    If (LEqual (^^I2C5.PMI2.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI2.G28X)
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (^^I2C5.PMI2.AVBL, One))
                {
                    Store (Zero, ^^I2C5.PMI2.LDO9)
                    If (LEqual (^^I2C5.PMI2.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI2.G28X)
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18T, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                ^I2C5.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^I2C5.PMI2.AVBG, One))
                {
                    Store (Zero, ^^I2C5.PMI2.G18X)
                    If (LEqual (^^I2C5.PMI2.AVBL, One))
                    {
                        Return (^^I2C5.PMI2.LD10)
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (^^I2C5.PMI2.AVBL, One))
                {
                    Store (One, ^^I2C5.PMI2.LD10)
                    If (LEqual (^^I2C5.PMI2.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI2.G18X)
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (^^I2C5.PMI2.AVBL, One))
                {
                    Store (Zero, ^^I2C5.PMI2.LD10)
                    If (LEqual (^^I2C5.PMI2.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI2.G18X)
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P1XT, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                ^I2C5.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^I2C5.PMI2.AVBG, One))
                {
                    Store (Zero, ^^I2C5.PMI2.G18U)
                    If (LEqual (^^I2C5.PMI2.AVBL, One))
                    {
                        Return (^^I2C5.PMI2.LD11)
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (^^I2C5.PMI2.AVBL, One))
                {
                    Store (One, ^^I2C5.PMI2.LD11)
                    If (LEqual (^^I2C5.PMI2.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI2.G18U)
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (^^I2C5.PMI2.AVBL, One))
                {
                    Store (Zero, ^^I2C5.PMI2.LD11)
                    If (LEqual (^^I2C5.PMI2.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMI2.G18U)
                        Sleep (0x1E)
                    }
                }
            }
        }

        Device (TBAD)
        {
            Name (_HID, "INTCFD9")  // _HID: Hardware ID
            Name (_CID, "PNP0C40")  // _CID: Compatible ID
            Name (_DDN, "Keyboard less system - 5 Button Array Device")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                GPO0, 
                GPO2, 
                I2C5, 
                ^I2C5.PMI1
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0007
                        }
                })
                Name (ABUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001C
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x005F
                        }
                })
                Name (BBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x005F
                        }
                })
                Name (RBU0, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0028
                        }
                })
                Name (ABU0, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0028
                        }
                })
                Name (BBU0, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0028
                        }
                })
                If (LEqual (PMID, 0x05))
                {
                    Return (ABUF)
                }

                If (LEqual (PMID, 0x06))
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (BBUF)
                    }
                    Else
                    {
                        Return (BBU0)
                    }
                }

                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xC5, 0xF3, 0xBC, 0xDF, 0xA5, 0xE7, 0xE6, 0x44,
                            /* 0008 */   0x9C, 0x1F, 0x29, 0xC7, 0x6F, 0x6E, 0x05, 0x9C
                        }))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg2), _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03
                            })
                        }
                        Else
                        {
                            If (LEqual (_T_0, One))
                            {
                                Return (0x07)
                            }
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00
                    })
                }

                Return (Zero)
            }
        }

        Device (MBID)
        {
            Name (_HID, "INT33BD")  // _HID: Hardware ID
            Name (_CID, "INT33BD")  // _CID: Compatible ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE00000D0,         // Address Base
                        0x0000000C,         // Address Length
                        )
                })
                Return (RBUF)
            }

            OperationRegion (REGS, 0x87, Zero, 0x30)
            Field (REGS, DWordAcc, NoLock, Preserve)
            {
                PORT,   32, 
                REG,    32, 
                DATA,   32, 
                MASK,   32, 
                BE,     32, 
                OP,     32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x87))
                {
                    Store (Arg1, AVBL)
                }
            }

            Method (READ, 3, Serialized)
            {
                Store (0xFFFFFFFF, Local0)
                If (LEqual (AVBL, One))
                {
                    Store (Zero, OP)
                    Store (Arg0, PORT)
                    Store (Arg1, REG)
                    Store (Arg2, BE)
                    Store (DATA, Local0)
                }

                Return (Local0)
            }

            Method (WRIT, 4, Serialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (One, OP)
                    Store (Arg0, PORT)
                    Store (Arg1, REG)
                    Store (Arg2, BE)
                    Store (Arg3, DATA)
                }
            }

            Method (MODI, 5, Serialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (0x02, OP)
                    Store (Arg0, PORT)
                    Store (Arg1, REG)
                    Store (Arg2, BE)
                    Store (Arg3, DATA)
                    Store (Arg4, MASK)
                }
            }
        }

        Device (PAGD)
        {
            Name (_HID, "ACPI000C")  // _HID: Hardware ID
            Name (_CID, "ACPI000C")  // _CID: Compatible ID
            Name (IDCN, Zero)
            Name (PURP, Package (0x02)
            {
                One, 
                Zero
            })
            Method (_PUR, 0, Serialized)  // _PUR: Processor Utilization Request
            {
                Store (IDCN, Index (PURP, One))
                Return (PURP)
            }

            Method (_OST, 3, Serialized)  // _OST: OSPM Status Indication
            {
                Store ("_OST is invoked", Debug)
            }
        }
    }

    Name (PICM, Zero)
    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000) {})
    OperationRegion (MDBG, SystemMemory, 0x7CC62010, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }

    Method (DB2H, 1, Serialized)
    {
        SHOW (Arg0)
        MDGC (0x20)
        Store (MBUF, MDG0)
    }

    Method (DW2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x08, Local1)
        And (Local0, 0xFF, Local0)
        And (Local1, 0xFF, Local1)
        DB2H (Local1)
        Decrement (BUFN)
        DB2H (Local0)
    }

    Method (DD2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x10, Local1)
        And (Local0, 0xFFFF, Local0)
        And (Local1, 0xFFFF, Local1)
        DW2H (Local1)
        Decrement (BUFN)
        DW2H (Local0)
    }

    Method (MBGS, 1, Serialized)
    {
        Store (SizeOf (Arg0), Local0)
        Name (BUFS, Buffer (Local0) {})
        Store (Arg0, BUFS)
        MDGC (0x20)
        While (Local0)
        {
            MDGC (DerefOf (Index (BUFS, Subtract (SizeOf (Arg0), Local0))))
            Decrement (Local0)
        }

        Store (MBUF, MDG0)
    }

    Method (SHOW, 1, Serialized)
    {
        MDGC (NTOC (ShiftRight (Arg0, 0x04)))
        MDGC (NTOC (Arg0))
    }

    Method (LINE, 0, Serialized)
    {
        Store (BUFN, Local0)
        And (Local0, 0x0F, Local0)
        While (Local0)
        {
            MDGC (Zero)
            Increment (Local0)
            And (Local0, 0x0F, Local0)
        }
    }

    Method (MDGC, 1, Serialized)
    {
        Store (Arg0, Index (MBUF, BUFN))
        Add (BUFN, One, BUFN)
        If (LGreater (BUFN, 0x0FFF))
        {
            And (BUFN, 0x0FFF, BUFN)
            UP_L (One)
        }
    }

    Method (UP_L, 1, Serialized)
    {
        Store (Arg0, Local2)
        ShiftLeft (Local2, 0x04, Local2)
        MOVE (Local2)
        Subtract (0x1000, Local2, Local3)
        While (Local2)
        {
            Store (Zero, Index (MBUF, Local3))
            Increment (Local3)
            Decrement (Local2)
        }
    }

    Method (MOVE, 1, Serialized)
    {
        Store (Arg0, Local4)
        Store (Zero, BUFN)
        Subtract (0x1000, Local4, Local5)
        While (Local5)
        {
            Decrement (Local5)
            Store (DerefOf (Index (MBUF, Local4)), Index (MBUF, BUFN))
            Increment (BUFN)
            Increment (Local4)
        }
    }

    Method (NTOC, 1, Serialized)
    {
        And (Arg0, 0x0F, Local0)
        If (LLess (Local0, 0x0A))
        {
            Add (Local0, 0x30, Local0)
        }
        Else
        {
            Add (Local0, 0x37, Local0)
        }

        Return (Local0)
    }

    Scope (_SB.I2C1)
    {
        Name (AVBL, Zero)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If (LEqual (Arg0, 0x09))
            {
                Store (Arg1, AVBL)
            }
        }

        Device (SMUX)
        {
            Name (_HID, "SMSC3750")  // _HID: Hardware ID
            Name (_CID, "SMSC3750")  // _CID: Compatible ID
            Name (_DDN, "SMSC 3750 USB MUX")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBus (0x0068, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0001
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF)
            }
        }

        Name (MUXW, ResourceTemplate ()
        {
            I2cSerialBus (0x0068, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.I2C1",
                0x00, ResourceConsumer, ,
                )
        })
        OperationRegion (MUXO, GenericSerialBus, Zero, 0x10)
        Field (MUXO, BufferAcc, NoLock, Preserve)
        {
            Connection (MUXW), 
            AccessAs (BufferAcc, AttribByte), 
            MSTA,   8
        }

        Field (MUXO, BufferAcc, NoLock, Preserve)
        {
            Connection (MUXW), 
            Offset (0x01), 
            AccessAs (BufferAcc, AttribByte), 
            MCON,   8
        }

        Field (MUXO, BufferAcc, NoLock, Preserve)
        {
            Connection (MUXW), 
            Offset (0x02), 
            AccessAs (BufferAcc, AttribByte), 
            MCHG,   8
        }

        Field (MUXO, BufferAcc, NoLock, Preserve)
        {
            Connection (MUXW), 
            Offset (0x03), 
            AccessAs (BufferAcc, AttribByte), 
            MCST,   8
        }

        Device (GPOE)
        {
            Name (_HID, "INBC0000")  // _HID: Hardware ID
            Name (_CID, "INBC0000")  // _CID: Compatible ID
            Name (_DDN, "GPIO Expander")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBus (0x0023, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF)
            }
        }

        Name (IOEX, ResourceTemplate ()
        {
            I2cSerialBus (0x0023, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.I2C1",
                0x00, ResourceConsumer, ,
                )
        })
        OperationRegion (IOXO, GenericSerialBus, Zero, 0x20)
        Field (IOXO, BufferAcc, NoLock, Preserve)
        {
            Connection (IOEX), 
            Offset (0x01), 
            AccessAs (BufferAcc, AttribByte), 
            INR1,   8
        }

        Field (IOXO, BufferAcc, NoLock, Preserve)
        {
            Connection (IOEX), 
            Offset (0x05), 
            AccessAs (BufferAcc, AttribByte), 
            OUTR,   8
        }

        Field (IOXO, BufferAcc, NoLock, Preserve)
        {
            Connection (IOEX), 
            Offset (0x0D), 
            AccessAs (BufferAcc, AttribByte), 
            CONR,   8
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xE0000000,         // Address Base
                    0x10000000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED01000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED03000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED04000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED0C000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED08000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED1C000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEF00000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (LEqual (And (DID1, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (LEqual (And (DID2, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (LEqual (And (DID3, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (LEqual (And (DID4, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (LEqual (And (DID5, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (CondRefOf (NDN3))
        {
            NDN3 (Arg0)
        }
    }

    Scope (_SB.I2C1)
    {
        Device (SMFG)
        {
            Name (_HID, "MAX17047")  // _HID: Hardware ID
            Name (_CID, "MAX17047")  // _CID: Compatible ID
            Name (_DDN, "Fuel Gauge Controller")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBus (0x0036, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0012
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LAnd (LEqual (BDID, 0x06), And (OSSL, 0x80)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (SMCG)
        {
            Name (_HID, "SMB0349")  // _HID: Hardware ID
            Name (_CID, "SMB0349")  // _CID: Compatible ID
            Name (_DDN, "Charger")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBus (0x0035, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0002
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LAnd (LEqual (BDID, 0x06), And (OSSL, 0x80)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (TBCG)
        {
            Name (_HID, "TBQ24296")  // _HID: Hardware ID
            Name (_CID, "TBQ24296")  // _CID: Compatible ID
            Name (_DDN, "Charger")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBus (0x006B, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0002
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LAnd (LEqual (BDID, 0x06), And (OSSL, 0x80)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.I2C1)
    {
        Name (MXFG, ResourceTemplate ()
        {
            I2cSerialBus (0x0036, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.I2C1",
                0x00, ResourceConsumer, ,
                )
        })
        OperationRegion (DVFG, GenericSerialBus, Zero, 0x0100)
        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x05), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG05,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x10), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG10,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x17), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG17,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x18), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG18,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x09), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG09,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x0A), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG0A,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x11), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG11,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG00,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x03), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG03,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x1D), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG1D,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x2B), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG2B,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x08), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            THRM,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x06), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            SOCR,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (MXFG), 
            Offset (0x1C), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            MXCU,   8
        }

        Name (SMBC, ResourceTemplate ()
        {
            I2cSerialBus (0x0035, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.I2C1",
                0x00, ResourceConsumer, ,
                )
        })
        OperationRegion (DVBC, GenericSerialBus, Zero, 0x0100)
        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            AccessAs (BufferAcc, AttribByte), 
            BC00,   8, 
            BC01,   8, 
            BC02,   8, 
            BC03,   8, 
            BC04,   8, 
            BC05,   8, 
            BC06,   8, 
            BC07,   8, 
            BC08,   8, 
            BC09,   8, 
            BC0A,   8, 
            BC0B,   8, 
            BC0C,   8, 
            BC0D,   8, 
            BC0E,   8, 
            BC0F,   8, 
            BC10,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x3D), 
            AccessAs (BufferAcc, AttribByte), 
            BC3D,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x30), 
            AccessAs (BufferAcc, AttribByte), 
            BC30,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x3E), 
            AccessAs (BufferAcc, AttribByte), 
            BC3E,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x35), 
            AccessAs (BufferAcc, AttribBytes (0x06)), 
            BC35,   8
        }

        Name (BQBC, ResourceTemplate ()
        {
            I2cSerialBus (0x006B, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.I2C1",
                0x00, ResourceConsumer, ,
                )
        })
        OperationRegion (DVBQ, GenericSerialBus, Zero, 0x20)
        Field (DVBQ, BufferAcc, NoLock, Preserve)
        {
            Connection (BQBC), 
            AccessAs (BufferAcc, AttribByte), 
            BQ00,   8, 
            BQ01,   8, 
            BQ02,   8, 
            BQ03,   8, 
            BQ04,   8, 
            BQ05,   8, 
            BQ06,   8, 
            BQ07,   8, 
            BQ08,   8, 
            BQ09,   8, 
            BQ0A,   8
        }

        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (FGDV, 0x0A)
            Name (BCCC, 0x60)
            Name (BCCE, One)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSCP, 0x132A)
            Name (DSVO, 0x0ED8)
            Name (RECT, 0x1004)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (ACMD, 0xFF)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                I2C1, 
                GPO2, 
                GPO0
            })
            Name (BUFF, Buffer (0x03)
            {
                 0x00, 0x01, 0x00
            })
            CreateByteField (BUFF, Zero, BYAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (BUF1, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (BUF1, Zero, BSTA)
            CreateByteField (BUF1, One, BLEN)
            CreateDWordField (BUF1, 0x02, DAT1)
            Name (BUF2, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (BUF2, Zero, BSTS)
            CreateByteField (BUF2, One, SLEN)
            CreateWordField (BUF2, 0x02, WRD1)
            Name (INBU, Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (INBU, Zero, INST)
            CreateByteField (INBU, One, INLN)
            CreateByteField (INBU, 0x02, INT0)
            CreateByteField (INBU, 0x03, INT1)
            CreateByteField (INBU, 0x04, INT2)
            CreateByteField (INBU, 0x05, INT3)
            CreateByteField (INBU, 0x06, INT4)
            CreateByteField (INBU, 0x07, INT5)
            Method (CLIM, 0, NotSerialized)
            {
                Store (MSTA, BUFF)
                Store (0x02, Local1)
                Sleep (0x64)
                ADBG ("CLIM")
                ADBG (DATA)
                If (And (DATA, 0x10))
                {
                    If (And (DATA, 0xE0))
                    {
                        And (DATA, 0xE0, Local0)
                        If (LOr (LEqual (Local0, 0xA0), LEqual (Local0, 0x60)))
                        {
                            ADBG ("CLIM----1")
                            Store (0x02, Local1)
                        }

                        If (LOr (LEqual (Local0, 0x40), LEqual (Local0, 0x20)))
                        {
                            ADBG ("CLIM----2")
                            Store (0x07, Local1)
                        }

                        If (LEqual (Local0, 0x80))
                        {
                            ADBG ("CLIM----3")
                            Store (Zero, Local1)
                        }
                    }
                }

                Return (Local1)
            }

            Name (BIXP, Package (0x14)
            {
                Zero, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0x0A, 
                0x04, 
                Zero, 
                0x00017318, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x88B8, 
                0x61A8, 
                One, 
                One, 
                "SR Real Battery", 
                "123456789", 
                "LION", 
                "Intel SR 1"
            })
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                ADBG ("BIX")
                If (LEqual (AVBL, One))
                {
                    Store (FG10, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        Multiply (Local1, 0x05, Local2)
                        Divide (Local2, FGDV, Local0, Local1)
                        Store (Local1, Index (BIXP, 0x03))
                    }

                    Store (FG17, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        Divide (Local1, 0x64, Local0, Local2)
                        Store (Local2, Index (BIXP, 0x08))
                    }
                }

                Store (DSCP, Index (BIXP, 0x02))
                Store (DSVO, Index (BIXP, 0x05))
                Divide (DSCP, 0x0A, Local0, Local1)
                Store (Local1, Index (BIXP, 0x06))
                Divide (DSCP, 0x14, Local0, Local1)
                Store (Local1, Index (BIXP, 0x07))
                If (LEqual (ACMD, 0xFF))
                {
                    Store (INR1, BUFF)
                    If (LEqual (And (DATA, 0x20), 0x20))
                    {
                        Store (One, ACMD)
                        ADBG ("AC Mode")
                    }
                    Else
                    {
                        Store (Zero, ACMD)
                        ADBG ("Non-AC Mode")
                    }
                }

                Return (BIXP)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (LEqual (AVBL, One))
                {
                    ADBG ("BST")
                    Store (BQ09, BUFF)
                    And (DATA, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Store (BQ05, BUFF)
                        And (DATA, 0xCF, Local0)
                        Store (Local0, DATA)
                        Store (BUFF, BQ05)
                    }

                    Store (FG00, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                    }

                    ADBG (Local1)
                    If (LNotEqual (Local1, Zero))
                    {
                        And (WRD1, 0x02, Local0)
                        Store (Local0, WRD1)
                        Store (BUF2, FG00)
                    }

                    Store (BQ00, BUFF)
                    And (DATA, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        And (DATA, 0x7F, Local0)
                        Store (Local0, DATA)
                        Store (BUFF, BQ00)
                        Store (BQ07, BUFF)
                        Or (DATA, 0x80, Local0)
                        Store (Local0, DATA)
                        Store (BUFF, BQ07)
                    }

                    Store (BQ08, BUFF)
                    If (LNotEqual (BYAT, One))
                    {
                        ShiftRight (DATA, 0x04, Local0)
                        And (Local0, 0x03, Local0)
                        If (LOr (LEqual (Local0, One), LEqual (Local0, 0x02)))
                        {
                            Store (0x02, Local1)
                        }

                        If (LEqual (Local0, Zero))
                        {
                            Store (One, Local1)
                        }

                        If (LEqual (Local0, 0x03))
                        {
                            Store (Zero, Local1)
                        }

                        Store (Local1, Index (BSTP, Zero))
                    }

                    Store (FG0A, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        If (And (Local1, 0x8000))
                        {
                            Subtract (0xFFFF, Local1, Local1)
                        }

                        Divide (Local1, FGDV, Local0, Local2)
                        Multiply (Local2, 0x9C, Local1)
                        Divide (Local1, 0x64, Local0, Local2)
                        Store (Local2, Index (BSTP, One))
                    }

                    Store (FG05, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        Multiply (Local1, 0x05, Local2)
                        Divide (Local2, FGDV, Local0, Local1)
                        Store (Local1, Index (BSTP, 0x02))
                    }

                    Store (FG09, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        ShiftRight (Local1, 0x03, Local2)
                        Multiply (Local2, 0x0271, Local1)
                        Divide (Local1, 0x03E8, Local0, Local2)
                        Store (Local2, Index (BSTP, 0x03))
                    }

                    Store (BQ01, BUFF)
                    If (LNotEqual (BYAT, One))
                    {
                        If (LEqual (BCCE, One))
                        {
                            Or (DATA, 0x10, DATA)
                            Store (BUFF, BQ01)
                        }
                        Else
                        {
                            And (DATA, 0xEF, DATA)
                            Store (BUFF, BQ01)
                        }

                        Store (DATA, Local0)
                        ADBG ("Charger enable")
                        ADBG (Local0)
                    }

                    Store (BQ02, BUFF)
                    If (LNotEqual (BYAT, One))
                    {
                        Store (BCCC, Local1)
                        Store (DATA, Local0)
                        And (Local0, 0xFC, Local2)
                        If (LNotEqual (Local2, Local1))
                        {
                            ADBG ("UPD CU From")
                            ADBG (DATA)
                            And (DATA, 0x03, Local2)
                            Or (Local2, Local1, DATA)
                            Store (BUFF, BQ02)
                        }

                        Store (DATA, Local1)
                        ADBG ("Fast Current")
                        ADBG (Local1)
                    }

                    If (LNotEqual (ACMD, One))
                    {
                        Store (CLIM (), Local3)
                        ADBG (Local3)
                        Store (BQ00, BUFF)
                        If (LNotEqual (BYAT, One))
                        {
                            And (DATA, 0x07, Local2)
                            If (LNotEqual (Local2, Local3))
                            {
                                And (DATA, 0xF8, Local2)
                                Or (Local2, Local3, DATA)
                                Store (BUFF, BQ00)
                            }
                        }

                        Store (DATA, Local1)
                        ADBG ("Input Current")
                        ADBG (Local1)
                    }
                }

                Return (BSTP)
            }

            Method (INTC, 0, NotSerialized)
            {
                Store (BQ08, BUFF)
                If (LNotEqual (BYAT, One))
                {
                    Store (DATA, Local1)
                }

                Return (Local1)
            }

            Method (INTF, 0, NotSerialized)
            {
                ADBG ("INTF")
                Store (FG00, BUF2)
                If (LNotEqual (BSTS, One))
                {
                    Store (WRD1, Local1)
                }

                Return (Local1)
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                Store (Arg0, BTPC)
                ADBG ("BTP")
                ADBG (Arg0)
                If (LEqual (AVBL, One))
                {
                    Store (Arg0, DAT1)
                    Store (0x04, BLEN)
                    Store (FG2B, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        And (WRD1, 0xFFFC, Local1)
                        Store (Local1, WRD1)
                        Store (BUF2, FG2B)
                    }

                    Store (FG1D, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        And (WRD1, 0xFFFB, Local1)
                        Or (Local1, 0x4004, Local2)
                        Store (Local2, WRD1)
                        Store (BUF2, FG1D)
                    }

                    Store (SOCR, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        ShiftRight (WRD1, 0x08, Local0)
                        And (Local0, 0xFF, Local1)
                    }

                    Add (Local1, One, Local2)
                    Subtract (Local1, One, Local3)
                    ShiftLeft (Local2, 0x08, Local1)
                    Or (Local1, Local3, Local2)
                    Store (Local2, WRD1)
                    Store (BUF2, FG03)
                }
            }

            Method (_BTM, 1, NotSerialized)  // _BTM: Battery Time
            {
                ADBG ("BTM")
                If (LGreater (Arg0, 0x7530))
                {
                    Return (Zero)
                }

                If (LEqual (AVBL, One))
                {
                    Store (FG11, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        If (LEqual (Arg0, Zero))
                        {
                            ShiftRight (Local1, 0x05, Local2)
                            Multiply (Local2, 0x03, Local1)
                            Multiply (Local1, 0x3C, Local2)
                            Return (Local2)
                        }

                        Store (FG05, BUF2)
                        If (LNotEqual (BSTS, One))
                        {
                            Store (WRD1, Local1)
                            Multiply (Local1, 0x05, Local2)
                            Divide (Local2, FGDV, Local0, Local1)
                            Multiply (Local1, 0x0E10, Local0)
                            Divide (Local0, Arg0, Local1, Local2)
                            Return (Local2)
                        }
                    }
                }

                Return (0xFFFFFFFF)
            }

            Method (_BCT, 1, NotSerialized)  // _BCT: Battery Charge Time
            {
                ADBG ("BCT")
                If (LOr (LGreater (Arg0, 0x64), LLess (Arg0, One)))
                {
                    Return (Zero)
                }

                If (LEqual (AVBL, One))
                {
                    Store (FG05, BUF2)
                    Store (WRD1, Local1)
                    If (LNotEqual (BSTS, One))
                    {
                        Multiply (Local1, 0x05, Local2)
                        Divide (Local2, FGDV, Local0, Local1)
                        Store (Local1, RECT)
                    }

                    Store (FG10, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        Multiply (Local1, 0x05, Local2)
                        Divide (Local2, FGDV, Local0, Local1)
                        Store (Local1, BCLP)
                    }

                    Store (FG0A, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        If (And (Local1, 0x8000))
                        {
                            Return (Zero)
                        }
                    }

                    Multiply (BCLP, Arg0, Local0)
                    Subtract (Local0, RECT, Local0)
                    Multiply (Local0, 0x0E10, Local0)
                    Divide (Local0, Local1, Local2, Local3)
                    Return (Local3)
                }

                Return (0xFFFFFFFF)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xE3, 0x67, 0x20, 0x4C, 0x7D, 0x88, 0x5C, 0x47,
                            /* 0008 */   0x97, 0x20, 0x4A, 0xF1, 0xD3, 0xED, 0x60, 0x2E
                        }))
                {
                    If (LEqual (Arg2, 0x02))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x00
                            })
                        }
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (PMID, 0x05))
                {
                    Return (Zero)
                }

                If (LEqual (PMID, 0x06))
                {
                    Return (Zero)
                }

                If (LEqual (AVBL, One))
                {
                    Store (FG05, BUF2)
                    If (LNotEqual (BSTS, Zero))
                    {
                        Return (Zero)
                    }
                }

                Return (0x1F)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB)
            }

            Method (PSOC, 0, NotSerialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (SOCR, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        ShiftRight (WRD1, 0x08, Local0)
                        And (Local0, 0xFF, Local1)
                    }

                    Return (Local1)
                }

                Return (Zero)
            }

            Method (PMAX, 0, NotSerialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (MXCU, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        If (And (Local1, 0x8000))
                        {
                            ShiftRight (Local1, 0x08, Local0)
                            And (Local0, 0xFF, Local1)
                            Subtract (0xFFFF, Local1, Local0)
                            Multiply (Local0, 0x04, Local1)
                        }
                        Else
                        {
                            ShiftRight (Local1, 0x08, Local0)
                            And (Local0, 0xFF, Local2)
                            Multiply (Local2, 0x04, Local1)
                        }

                        Divide (Local1, 0x0A, Local0, Local2)
                        Divide (Local2, FGDV, Local0, Local1)
                        Multiply (Local1, 0x03E8, Local2)
                        Multiply (DSVO, Local2, Local1)
                        Return (Local1)
                    }
                }

                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (NPWR, 0, NotSerialized)
            {
                Store (APWR (), Local3)
                If (LEqual (AVBL, One))
                {
                    Store (FG0A, BUF2)
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        If (And (Local1, 0x8000))
                        {
                            Subtract (0xFFFF, Local1, Local1)
                        }

                        Divide (Local1, FGDV, Local0, Local2)
                        Multiply (Local2, 0x9C, Local1)
                        Divide (Local1, 0x64, Local0, Local2)
                        Store (Local2, AVCU)
                        Store (FG09, BUF2)
                        If (LNotEqual (BSTS, One))
                        {
                            Store (WRD1, Local1)
                            ShiftRight (Local1, 0x03, Local2)
                            Multiply (Local2, 0x0271, Local1)
                            Divide (Local1, 0x03E8, Local0, Local2)
                        }

                        Multiply (Local2, AVCU, Local1)
                        Subtract (Local3, Local1, Local0)
                        Return (Local0)
                    }
                }

                Return (Local0)
            }

            Method (PSRC, 0, NotSerialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (BQ08, BUFF)
                    If (LNotEqual (BYAT, One))
                    {
                        Store (DATA, Local0)
                        ShiftRight (DATA, 0x06, Local0)
                        And (Local0, 0x03, Local0)
                        Return (Local0)
                    }
                }

                Return (One)
            }

            Method (CTYP, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (ARTG, 0, NotSerialized)
            {
                Return (0x0365C040)
            }
        }
    }

    Scope (_SB)
    {
        Device (ADP1)
        {
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (LEqual (PMID, One))
                {
                    If (CondRefOf (\_SB.I2C1.BATC, Local1))
                    {
                        Store (^^I2C1.BATC.PSRC (), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }

                    Return (One)
                }

                If (LEqual (PMID, 0x05))
                {
                    If (CondRefOf (\_SB.I2C5.BMBT, Local1))
                    {
                        Store (^^I2C5.BMBT.PSRC (), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                If (LEqual (PMID, 0x06))
                {
                    If (CondRefOf (\_SB.I2C5.TIBT, Local1))
                    {
                        Store (^^I2C5.TIBT.PSRC (), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Return (One)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB)
            }
        }
    }

    Scope (_SB.I2C5)
    {
        Device (BMDR)
        {
            Name (_HID, "INT33FE")  // _HID: Hardware ID
            Name (_CID, "INT33FE")  // _CID: Compatible ID
            Name (_DDN, "XPOWER Battery Device")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                PMI1
            })
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBus (0x0068, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.I2C5.PMI1", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0011
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (PMID, 0x05))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            OperationRegion (BMOP, 0x9E, Zero, 0x0100)
            Field (BMOP, DWordAcc, NoLock, Preserve)
            {
                SOC,    32, 
                FCCP,   32, 
                CHST,   32, 
                RMCP,   32, 
                VOLT,   32, 
                BATP,   32, 
                SRP0,   32, 
                STYP,   32, 
                CHGC,   32, 
                STPC,   32, 
                GADC,   32, 
                TTEM,   32, 
                TTCH,   32, 
                CYCL,   32, 
                BTP,    32, 
                DPCU,   32, 
                DSCP,   32, 
                TVOL,   32, 
                ILIM,   32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x9E))
                {
                    Store (Arg1, AVBL)
                }
            }

            Method (SBTP, 0, NotSerialized)
            {
                ADBG ("SBTP")
                If (CondRefOf (\_SB.I2C5.BMBT, Local1))
                {
                    Notify (ADP1, 0x80)
                    Notify (BMBT, 0x80)
                    Notify (BMBT, 0x81)
                    If (CondRefOf (\_SB.DPTF, Local3))
                    {
                        Notify (DPTF, 0x86)
                        Notify (TCH1, 0x80)
                    }

                    Return (One)
                }

                Return (Zero)
            }

            Method (PTYP, 0, NotSerialized)
            {
                ADBG ("PTYP")
                Or (PMID, 0x80, Local0)
                Return (Local0)
            }
        }

        Device (TIDR)
        {
            Name (_HID, "INT33FE")  // _HID: Hardware ID
            Name (_CID, "INT33FE")  // _CID: Compatible ID
            Name (_DDN, "TI PMIC Battery Device")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                PMI2
            })
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBus (0x006B, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
                I2cSerialBus (0x0068, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
                GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                    "\\_SB.I2C5.PMI2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0011
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (PMID, 0x06))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            OperationRegion (BMOP, 0x9E, Zero, 0x0100)
            Field (BMOP, DWordAcc, NoLock, Preserve)
            {
                SOC,    32, 
                FCCP,   32, 
                CHST,   32, 
                RMCP,   32, 
                VOLT,   32, 
                BATP,   32, 
                SRP0,   32, 
                STYP,   32, 
                CHGC,   32, 
                STPC,   32, 
                GADC,   32, 
                TTEM,   32, 
                TTCH,   32, 
                CYCL,   32, 
                BTP,    32, 
                DPCU,   32, 
                DSCP,   32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x9E))
                {
                    Store (Arg1, AVBL)
                }
            }

            Method (SBTP, 0, NotSerialized)
            {
                ADBG ("SBTP")
                If (CondRefOf (\_SB.I2C5.TIBT, Local1))
                {
                    Notify (ADP1, 0x80)
                    Notify (TIBT, 0x80)
                    Notify (TIBT, 0x81)
                    If (CondRefOf (\_SB.DPTF, Local3))
                    {
                        Notify (DPTF, 0x86)
                        Notify (TCH2, 0x80)
                    }

                    Return (One)
                }

                Return (Zero)
            }

            Method (PTYP, 0, NotSerialized)
            {
                ADBG ("PTYP")
                Or (PMID, 0x80, Local0)
                Return (Local0)
            }
        }

        Device (BMBT)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BCCE, One)
            Name (OTGS, Zero)
            Name (CHPR, One)
            Name (FGDV, 0x0A)
            Name (BCCC, 0x07)
            Name (BCIL, 0x05)
            Name (BCVF, 0x93)
            Name (BCFV, 0xED)
            Name (BCCH, 0x38)
            Name (BCST, 0x05)
            Name (BCPE, 0x74)
            Name (BCTV, 0x02)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSVO, 0x1068)
            Name (DSCP, 0x1BDF)
            Name (MANX, 0xFFFFFFFF)
            Name (MARR, 0xFFFFFFFF)
            Name (MARU, 0xFFFFFFFF)
            Name (MARY, Zero)
            Name (CHTY, Zero)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2C5
            })
            Name (BUCC, Buffer (0x03)
            {
                 0x00, 0x01, 0x00
            })
            CreateByteField (BUCC, Zero, MOST)
            CreateByteField (BUCC, 0x02, MODT)
            Name (BUYC, Buffer (0x03)
            {
                 0x00, 0x01, 0x00
            })
            CreateByteField (BUYC, Zero, MIST)
            CreateByteField (BUYC, 0x02, MIDT)
            Name (BMCH, Buffer (0x03)
            {
                 0x00, 0x01, 0x00
            })
            CreateByteField (BMCH, Zero, MHST)
            CreateByteField (BMCH, 0x02, MHDT)
            Name (BUFF, Buffer (0x03)
            {
                 0x00, 0x01, 0x00
            })
            CreateByteField (BUFF, Zero, BYAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (BUF1, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (BUF1, Zero, BSTA)
            CreateByteField (BUF1, One, BLEN)
            CreateDWordField (BUF1, 0x02, DAT1)
            Name (BUF2, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (BUF2, Zero, BSTS)
            CreateByteField (BUF2, One, SLEN)
            CreateWordField (BUF2, 0x02, WRD1)
            Name (BIXP, Package (0x14)
            {
                Zero, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0x06, 
                0x02, 
                Zero, 
                0x00017318, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x88B8, 
                0x61A8, 
                One, 
                One, 
                "SR Real Battery", 
                "123456789", 
                "LION", 
                "Intel SR 1"
            })
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                ADBG ("BIX")
                If (LEqual (^^BMDR.AVBL, One))
                {
                    Store (^^BMDR.FCCP, Index (BIXP, 0x03))
                    Store (^^BMDR.CYCL, Index (BIXP, 0x08))
                    Store (DSCP, Index (BIXP, 0x02))
                    Store (DSVO, Index (BIXP, 0x05))
                    Divide (DSCP, 0x11, Local0, Local1)
                    Store (Local1, Index (BIXP, 0x06))
                    Divide (DSCP, 0x32, Local0, Local1)
                    Store (Local1, Index (BIXP, 0x07))
                }

                Return (BIXP)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (LEqual (^^BMDR.AVBL, One))
                {
                    ADBG ("BST")
                    Store (XP01, BUYC)
                    And (MIDT, 0x40, MIDT)
                    Store (MIDT, Local0)
                    Store (XPB9, BMCH)
                    And (MHDT, 0x7F, MHDT)
                    If (LEqual (Local0, 0x40))
                    {
                        Store (0x02, Local1)
                        If (LEqual (MHDT, 0x64))
                        {
                            Store (Zero, Local1)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local1)
                    }

                    Store (Local1, Index (BSTP, Zero))
                    Store (^^BMDR.CHGC, Index (BSTP, One))
                    Multiply (^^BMDR.FCCP, MHDT, MANX)
                    Divide (MANX, 0x64, MARR, MARU)
                    Store (MARU, Index (BSTP, 0x02))
                    Store (^^BMDR.VOLT, Index (BSTP, 0x03))
                    Store (BCCC, ^^BMDR.DPCU)
                    Store (BCTV, ^^BMDR.TVOL)
                    Store (BCIL, ^^BMDR.ILIM)
                }

                Return (BSTP)
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                Store (Arg0, BTPC)
                ADBG ("BTP")
                ADBG (Arg0)
                If (LEqual (^^BMDR.AVBL, One))
                {
                    Store (Arg0, ^^BMDR.BTP)
                }
            }

            Method (_BTM, 1, NotSerialized)  // _BTM: Battery Time
            {
                ADBG ("BTM")
                If (LGreater (Arg0, 0x7530))
                {
                    Return (Zero)
                }

                Return (0xFFFFFFFF)
            }

            Method (_BCT, 1, NotSerialized)  // _BCT: Battery Charge Time
            {
                ADBG ("BCT")
                If (LOr (LGreater (Arg0, 0x64), LLess (Arg0, One)))
                {
                    Return (Zero)
                }

                Return (0xFFFFFFFF)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xE3, 0x67, 0x20, 0x4C, 0x7D, 0x88, 0x5C, 0x47,
                            /* 0008 */   0x97, 0x20, 0x4A, 0xF1, 0xD3, 0xED, 0x60, 0x2E
                        }))
                {
                    If (LEqual (Arg2, 0x02))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x00
                            })
                        }
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (PMID, 0x05))
                {
                    Return (0x1F)
                }

                Return (Zero)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB)
            }

            Method (PSOC, 0, NotSerialized)
            {
                ADBG ("PSOC")
                If (LEqual (^^BMDR.AVBL, One))
                {
                    Store (^^BMDR.SOC, Local1)
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (PMAX, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x00989680)
            }

            Method (NPWR, 0, NotSerialized)
            {
                Store (APWR (), Local3)
                Return (Zero)
            }

            Method (PSRC, 0, NotSerialized)
            {
                If (LEqual (^^BMDR.AVBL, One))
                {
                    Store (XP2F, BUCC)
                    And (MODT, 0xFF, MODT)
                    Store (MODT, Local0)
                    If (LEqual (Local0, 0x30))
                    {
                        Store (One, CHTY)
                        Return (One)
                    }

                    If (LEqual (Local0, 0x50))
                    {
                        Store (One, CHTY)
                        Return (One)
                    }

                    If (LEqual (Local0, 0x70))
                    {
                        Store (One, CHTY)
                        Return (One)
                    }
                    Else
                    {
                        Store (Zero, CHTY)
                        Return (Zero)
                    }
                }

                Return (Zero)
            }

            Method (CTYP, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (ARTG, 0, NotSerialized)
            {
                Return (0x00989680)
            }
        }

        Device (TIBT)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BCCE, One)
            Name (OTGS, Zero)
            Name (CHPR, One)
            Name (FGDV, 0x0A)
            Name (BCCC, 0x80)
            Name (BCIL, 0x65)
            Name (BCVF, 0x93)
            Name (BCFV, 0xED)
            Name (BCCH, 0x38)
            Name (BCST, 0x05)
            Name (BCPE, 0x74)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSCP, 0x1300)
            Name (DSVO, 0x0EA6)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2C5
            })
            Name (BUFF, Buffer (0x03)
            {
                 0x00, 0x01, 0x00
            })
            CreateByteField (BUFF, Zero, BYAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (BUF1, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (BUF1, Zero, BSTA)
            CreateByteField (BUF1, One, BLEN)
            CreateDWordField (BUF1, 0x02, DAT1)
            Name (BUF2, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (BUF2, Zero, BSTS)
            CreateByteField (BUF2, One, SLEN)
            CreateWordField (BUF2, 0x02, WRD1)
            Name (BIXP, Package (0x14)
            {
                Zero, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0x0A, 
                0x04, 
                Zero, 
                0x00017318, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x88B8, 
                0x61A8, 
                One, 
                One, 
                "SR Real Battery", 
                "123456789", 
                "LION", 
                "Intel SR 1"
            })
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                ADBG ("BIX")
                If (LEqual (^^TIDR.AVBL, One))
                {
                    Store (^^TIDR.FCCP, Index (BIXP, 0x03))
                    Store (^^TIDR.CYCL, Index (BIXP, 0x08))
                    Store (^^TIDR.DSCP, Index (BIXP, 0x02))
                    Store (^^TIDR.DSCP, DSCP)
                }

                Store (DSVO, Index (BIXP, 0x05))
                Divide (DSCP, 0x0A, Local0, Local1)
                Store (Local1, Index (BIXP, 0x06))
                Divide (DSCP, 0x14, Local0, Local1)
                Store (Local1, Index (BIXP, 0x07))
                Return (BIXP)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (LEqual (^^TIDR.AVBL, One))
                {
                    ADBG ("BST")
                    Store (^^TIDR.CHST, Local0)
                    And (Local0, 0x0F, Local0)
                    If (LEqual (Local0, 0x02))
                    {
                        Store (0x02, Local1)
                    }

                    If (LEqual (Local0, One))
                    {
                        Store (One, Local1)
                    }

                    If (LEqual (Local0, 0x08))
                    {
                        Store (Zero, Local1)
                    }

                    Store (Local1, Index (BSTP, Zero))
                    Store (^^TIDR.CHGC, Index (BSTP, One))
                    Store (^^TIDR.RMCP, Index (BSTP, 0x02))
                    Store (^^TIDR.VOLT, Index (BSTP, 0x03))
                    Store (BCCC, ^^TIDR.DPCU)
                }

                Return (BSTP)
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                Store (Arg0, BTPC)
                ADBG ("BTP")
                ADBG (Arg0)
                If (LEqual (^^TIDR.AVBL, One))
                {
                    Store (Arg0, ^^TIDR.BTP)
                }
            }

            Method (_BTM, 1, NotSerialized)  // _BTM: Battery Time
            {
                ADBG ("BTM")
                If (LGreater (Arg0, 0x7530))
                {
                    Return (Zero)
                }

                Return (0xFFFFFFFF)
            }

            Method (_BCT, 1, NotSerialized)  // _BCT: Battery Charge Time
            {
                ADBG ("BCT")
                If (LOr (LGreater (Arg0, 0x64), LLess (Arg0, One)))
                {
                    Return (Zero)
                }

                Return (0xFFFFFFFF)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xE3, 0x67, 0x20, 0x4C, 0x7D, 0x88, 0x5C, 0x47,
                            /* 0008 */   0x97, 0x20, 0x4A, 0xF1, 0xD3, 0xED, 0x60, 0x2E
                        }))
                {
                    If (LEqual (Arg2, 0x02))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x00
                            })
                        }
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (PMID, 0x06))
                {
                    Return (0x1F)
                }

                Return (Zero)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB)
            }

            Method (PSOC, 0, NotSerialized)
            {
                ADBG ("PSOC")
                If (LEqual (^^TIDR.AVBL, One))
                {
                    Store (^^TIDR.SOC, Local1)
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (PMAX, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (NPWR, 0, NotSerialized)
            {
                Store (APWR (), Local3)
                Return (Zero)
            }

            Method (PSRC, 0, NotSerialized)
            {
                If (LEqual (^^TIDR.AVBL, One))
                {
                    Store (^^TIDR.STYP, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Local0, One))
                    {
                        Return (One)
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        Return (0x02)
                    }

                    If (LEqual (Local0, 0x03))
                    {
                        Return (0x03)
                    }

                    If (LEqual (Local0, 0x04))
                    {
                        Return (0x04)
                    }

                    If (LEqual (Local0, 0x05))
                    {
                        Return (0x05)
                    }
                }

                Return (One)
            }

            Method (CTYP, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (ARTG, 0, NotSerialized)
            {
                Return (0x0365C040)
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (TZ00)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C5
            })
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LEqual (PMID, 0x05))
                {
                    If (LEqual (\_SB.I2C5.PMI1.AVBG, One))
                    {
                        Store (Zero, \_SB.I2C5.PMI1.GMP2)
                        If (LEqual (\_SB.I2C5.PMI1.AVBD, One))
                        {
                            Return (\_SB.I2C5.PMI1.TMP2)
                        }
                    }
                }

                If (LEqual (PMID, 0x06))
                {
                    If (LEqual (\_SB.I2C5.PMI2.AVBG, One))
                    {
                        Store (Zero, \_SB.I2C5.PMI2.GMP2)
                        If (LEqual (\_SB.I2C5.PMI2.AVBD, One))
                        {
                            Return (\_SB.I2C5.PMI2.TMP2)
                        }
                    }
                }

                If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                {
                    Store (Zero, \_SB.I2C5.PMIC.GMP2)
                    If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                    {
                        Return (\_SB.I2C5.PMIC.TMP2)
                    }
                }

                Return (0x0AAC)
            }
        }
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

