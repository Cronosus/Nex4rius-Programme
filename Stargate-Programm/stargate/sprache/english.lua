-- pastebin run -f YVqKFnsP
-- nexDHD von Nex4rius
-- https://github.com/Nex4rius/Nex4rius-Programme/tree/master/Stargate-Programm

return {
  dezimalkomma              = false,
  pruefeKomponenten         = "Checking Components\n",
  redstoneOK                = "- Redstone Card        ok - optional",
  redstoneFehlt             = "- Redstone Card        missing - optional",
  modemOK                   = "- Wi-Fi-Card           ok - optional",
  modemFehlt                = "- Wi-Fi-Card           missing - optional",
  InternetOK                = "- Internet             ok - optional",
  InternetFehlt             = "- Internet             missing - optional",
  SensorOK                  = "- World Sensor         ok - optional",
  SensorFehlt               = "- World Sensor         missing - optional",
  gpuOK2T                   = "- GPU Tier2            ok",
  gpuOK3T                   = "- GPU Tier3            ok - Tier2 is enough",
  gpuFehlt                  = "- GPU Tier2            missing",
  StargateOK                = "- Stargate             ok",
  StargateFehlt             = "- Stargate             missing",
  inventory_controllerOK    = "- Inventory Controller ok\n",
  inventory_controllerFehlt = "- Inventory Controller missing\n",
  derzeitigeVersion         = "\ncurrect version:       ",
  verfuegbareVersion        = "\navailable version:     ",
  betaVersion               = "beta version:          ",
  aktualisierenBeta         = "\nupdate: beta version\n",
  aktualisierenFrage        = "\nupdate? yes/no",
  aktualisierenJa           = "\nupdate: yes\n",
  aktualisierenNein         = "\nanswer: ",
  aktualisierenJetzt        = "\n\n\nupdating...\n",
  aktualisierenGleich       = "Automated update when the Stargate is idle.",
  laden                     = "\nloading...",
  ja                        = "yes",
  nein                      = "no",
  hilfe                     = "help",
  Adressseite               = "Address Page #",
  Unbekannt                 = "unknown",
  waehlen                   = "Dialling ",
  energie1                  = "Energy ",
  energie2                  = ":        ",
  keineVerbindung           = "Stargate not connected",
  Steuerung                 = "Controls",
  IrisSteuerung             = "iris control ",
  an_aus                    = "On/Off",
  AdressenBearbeiten        = "Edit addresses",
  beenden                   = "Quit",
  nachrichtAngekommen       = "message: ",
  RedstoneSignale           = "\nredstone signals",
  RedstoneWeiss             = "white: state not Idle",
  RedstoneRot               = "red: incoming connection",
  RedstoneGelb              = "yellow: iris closed",
  RedstoneSchwarz           = "black: idc accepted",
  RedstoneGruen             = "green: connected\n",
  versionName               = "Version: ",
  fehlerName                = "<ERROR>",
  SteuerungName             = "show Info",
  lokaleAdresse             = "Local Address:    ",
  zielAdresseName           = "Destination Addr: ",
  zielName                  = "Destination Name: ",
  statusName                = "State:            ",
  IrisName                  = "Iris:             ",
  IrisSteuerung             = "Iris Control:     ",
  IDCakzeptiert             = "IDC:              accepted",
  IDCname                   = "IDC:              ",
  chevronName               = "Chevron:          ",
  richtung                  = "Direction:        ",
  autoSchliessungAus        = "Autoclose:        Off",
  autoSchliessungAn         = "Autoclose:        ",
  zeit1                     = "Time:             ",
  zeit2                     = "Time:",
  atmosphere                = "Atmosphere:       ",
  atmosphere2               = "Atmosphere: ",
  atmosphereJA              = "good",
  atmosphereNEIN            = "dangerous",
  abschalten                = "Disconnect",
  oeffneIris                = "Open Iris",
  schliesseIris             = "Close Iris",
  IDCeingabe                = "Enter IDC",
  naechsteSeite             = "Next Page",
  vorherigeSeite            = "Previous Page",
  senden                    = "Sending: ",
  aufforderung              = "Request",
  manueller                 = "Manual",
  Eingriff                  = "Override",
  stargateName              = "Stargate",
  stargateAbschalten        = "Disconnect",
  aktiviert                 = "engaged",
  zeigeAdressen             = "Show Addresses",
  EinstellungenAendern      = "change config",
  irisNameOffen             = "Open",
  irisNameOeffnend          = "Open",
  irisNameGeschlossen       = "Closed",
  irisNameSchliessend       = "Closing",
  irisNameOffline           = "Offline",
  irisKontrolleNameAn       = "On",
  irisKontrolleNameAus      = "Off",
  RichtungNameEin           = "Incoming",
  RichtungNameAus           = "Outgoing",
  StatusNameUntaetig        = "Idle",
  StatusNameWaehlend        = "Dialling",
  StatusNameVerbunden       = "Connected",
  StatusNameSchliessend     = "Closing",
  Neustart                  = "restart",
  IrisSteuerungName         = "Control",
  ausschaltenName           = "shutting down...",
  redstoneAusschalten       = "turn off redstone: ",
  colorfulLampAusschalten   = "turn off colorfulLamp: ",
  verarbeiteAdressen        = "Processing addresses: ",
  Hilfetext                 = "Usage: stargate [...]\nyes\t-> update to stable version\nno\t-> no update\nbeta\t-> update to beta version\nhelp\t-> show this message again",
  Sprachaenderung           = "language changes after the next restart",
  entwicklerName            = "Developer:",
  IDCgesendet               = "sending IDC",
  DateienFehlen             = "files are missing\nredownload everything?",
  speichern                 = 'to save press "Ctrl + S"',
  schliessen                = 'to close press "Ctrl + W"',
  IDC                       = "Iris Deactivation Code",
  autoclosetime             = "in seconds -- false for no autoclose",
  RF                        = "show energy in RF instead of EU",
  side                      = "bottom, top, back, front, right or left",
  autoUpdate                = "enable automated updates",
  iris                      = "Put your own Stargate addresses here",
  keinIDC                   = "for no Iris Code",
  nichtsAendern             = "don't change anything below",
  Update                    = "update?",
  UpdateBeta                = "update beta?",
  TastaturFehlt             = "keyboard is required",
  bereitsNeusteVersion      = "no updates found",
  autoUpdate                = "automated updates are enabled",
  akzeptiert                = "accepted",
  StargateName              = "the name of this stargate",
  FrageStargateName         = "give this stargate a name",
  debug                     = "for debugging",
  keineEnergie              = "<no energy>",
  StargateNichtKomplett     = "Stargate is non-functional",
  logbuch                   = "show logbook",
  logbuchTitel              = "Logbook",
  zeigeLog                  = "show error log",
}
