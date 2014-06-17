package android.webkit;

public enum ConsoleMessage$MessageLevel
{
  static
  {
    LOG = new MessageLevel("LOG", 1);
    WARNING = new MessageLevel("WARNING", 2);
    ERROR = new MessageLevel("ERROR", 3);
    DEBUG = new MessageLevel("DEBUG", 4);
    MessageLevel[] arrayOfMessageLevel = new MessageLevel[5];
    arrayOfMessageLevel[0] = TIP;
    arrayOfMessageLevel[1] = LOG;
    arrayOfMessageLevel[2] = WARNING;
    arrayOfMessageLevel[3] = ERROR;
    arrayOfMessageLevel[4] = DEBUG;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.webkit.ConsoleMessage.MessageLevel
 * JD-Core Version:    0.6.2
 */