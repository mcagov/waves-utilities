class WavesUtilities::Port
  def initialize(code)
    @code = code
  end

  def name
    port = WavesUtilities::Port.all.find { |port| port[1] == @code }
    port ? port[0].gsub("\u2028", "") : ""
  end

  class << self
    def all
      part_2.map{ |port| [port[1], port[0]]}
    end

    def part_2
      [
        ["A", "ABERDEEN"],
        ["AB", "ABERYSTWYTH"],
        ["AA", "ALLOA "],
        ["AH", "ARBROATH "],
        ["AD", "ARDROSSAN"],
        ["AR", "AYR"],
        ["BA", "BALLANTRAE"],
        ["BF", "BANFF "],
        ["BE", "BARNSTAPLE"],
        ["BW", "BARROW"],
        ["BS", "BEAUMARIS "],
        ["B", "BELFAST "],
        ["BK", "BERWICK-ON-TWEED"],
        ["BD", "BIDEFORD "],
        ["BH", "BLYTH "],
        ["BO", "BORROWSTONESS"],
        ["BN", "BOSTON "],
        ["BR", "BRIDGWATER"],
        ["BL", "BRISTOL "],
        ["BM", "BRIXHAM "],
        ["BRD", "BROADFORD "],
        ["BCK", "BUCKIE "],
        ["BU", "BURNTISLAND"],
        ["CO", "CAERNARVON"],
        ["CN", "CAMPBELTOWN"],
        ["CF", "CARDIFF "],
        ["CA", "CARDIGAN "],
        ["CL", "CARLISLE"],
        ["CY", "CASTLEBAY, BARRA"],
        ["CH", "CHESTER "],
        ["CK", "COLCHESTER "],
        ["CE", "COLERAINE"],
        ["CS", "COWES "],
        ["DH", "DARTMOUTH"],
        ["DR", "DOVER "],
        ["DS", "DUMFRIES "],
        ["DE", "DUNDEE "],
        ["E", "EXETER "],
        ["FH", "FALMOUTH"],
        ["F", "FAVERSHAM"],
        ["FXT", "FELIXSTOWE"],
        ["FIS", "FISHGUARD"],
        ["FD", "FLEETWOOD "],
        ["FE", "FOLKESTONE "],
        ["FY", "FOWEY "],
        ["FR", "FRASERBURGH"],
        ["GW", "GLASGOW "],
        ["GR", "GLOUCESTER "],
        ["GE", "GOOLE "],
        ["GH", "GRANGEMOUTH"],
        ["GN", "GRANTON "],
        ["YH", "GREAT YARMOUTH"],
        ["GK", "GREENOCK "],
        ["GY", "GRIMSBY "],
        ["HL", "HARTLEPOOL "],
        ["HLWEST", "HARTLEPOOL  WEST"],
        ["HH", "HARWICH "],
        ["H", "HULL "],
        ["INS", "INVERNESS "],
        ["IH", "IPSWICH"],
        ["IE", "IRVINE"],
        ["LN", "KING'S LYNN"],
        ["KY", "KIRKCALDY"],
        ["K", "KIRKWALL"],
        ["LR", "LANCASTER"],
        ["LH", "LEITH"],
        ["LK", "LERWICK "],
        ["LI", "LITTLEHAMPTON"],
        ["LL", "LIVERPOOL "],
        ["LA", "LLANELLI "],
        ["LO", "LONDON "],
        ["LY", "LONDONDERRY"],
        ["LT", "LOWESTOFT "],
        ["MN", "MALDON "],
        ["MR", "MANCHESTER "],
        ["MT", "MARYPORT "],
        ["ML", "METHIL "],
        ["MH", "MIDDLESBROUGH"],
        ["M", "MILFORD HAVEN"],
        ["NT", "NEWPORT, GWENT"],
        ["N", "NEWRY "],
        ["OB", "OBAN "],
        ["ME", "MONTROSE "],
        ["NE", "NEWCASTLE "],
        ["NN", "NEWHAVEN "],
        ["PW", "PADSTOW "],
        ["PZ", "PENZANCE "],
        ["PD", "PETERHEAD "],
        ["PH", "PLYMOUTH "],
        ["PE", "POOLE "],
        ["PO", "PORTLAND"],
        ["P", "PORTSMOUTH "],
        ["PT", "PORT TALBOT "],
        ["PN", "PRESTON "],
        ["R", "RAMSGATE"],
        ["RR", "ROCHESTER"],
        ["RO ", "ROTHESAY"],
        ["RN ", "RUNCORN"],
        ["RX ", "RYE"],
        ["SS", "ST. IVES"],
        ["SE", "SALCOMBE "],
        ["SH", "SCARBROUGH "],
        ["SC", "SCILLY "],
        ["SN", "SHIELDS, NORTH "],
        ["SSS", "SHIELDS, SOUTH"],
        ["SM", "SHOREHAM"],
        ["SU", "SOUTHAMPTON"],
        ["ST", "STOCKTON"],
        ["SY", "STORNOWAY"],
        ["SR", "STRANRAER"],
        ["SD", "SUNDERLAND"],
        ["SA", "SWANSEA"],
        ["TT", "TARBERT, LOCH FYNE"],
        ["TH", "TEIGNMOUTH"],
        ["TN", "TROON"],
        ["TO", "TRURO"],
        ["UL", "ULLAPOOL"],
        ["WH", "WEYMOUTH"],
        ["WY", "WHITBY"],
        ["WK", "WICK"],
        ["WN", "WIGTOWN"],
        ["WA", "WHITEHAVEN"],
        ["WI", "WISBECH"],
        ["WO", "WORKINGTON"],
      ]
    end
  end
end
