package com.alipay.android.app.pay;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.alipay.android.app.util.ChannelConfig;
import com.alipay.android.app.util.LogUtils;
import com.alipay.mobile.framework.AlipayApplication;
import java.io.InputStream;
import java.util.Properties;

public class GlobalConstant
{
  public static String API_NAME;
  public static String API_VERSION;
  public static final String APPID = "SPSafePay";
  public static boolean DEBUG = false;
  private static String DEBUG_TEXT;
  public static String DEFAULT_SERVER_NAME;
  public static boolean DRAW_COLUMN_FRAME = false;
  private static String DRAW_COLUMN_FRAME_TEXT;
  public static boolean DRAW_ROW_FRAME = false;
  private static String DRAW_ROW_FRAME_TEXT;
  public static final String GLOBAL_SETTINGS = "global_settings";
  public static int HTTP_CONNECTION_TIMEOUT = 0;
  private static String HTTP_CONNECTION_TIMEOUT_TEXT;
  public static int HTTP_SOCKET_BUFFER_SIZE = 0;
  private static String HTTP_SOCKET_BUFFER_SIZE_TEXT;
  public static int HTTP_SO_TIMEOUT = 0;
  private static String HTTP_SO_TIMEOUT_TEXT;
  public static String HTTP_URL;
  public static final String KEY_RSA = "trideskey";
  public static String MONITOR_URL;
  public static String MSP_PACKAGENAME = "com.alipay.android.app";
  public static String NAMESPACE;
  public static boolean PRE;
  private static String PRE_TEXT;
  public static int RSA_GET_COUNT;
  private static String RSA_GET_COUNT_TEXT;
  public static String RSA_PUBLIC;
  public static String SID;
  public static int TID_COUNT;
  private static String TID_COUNT_TEXT;

  public static void convertProperties(Context paramContext)
  {
    try
    {
      HTTP_CONNECTION_TIMEOUT = Integer.parseInt(HTTP_CONNECTION_TIMEOUT_TEXT);
    }
    catch (NumberFormatException localException3)
    {
      try
      {
        HTTP_SO_TIMEOUT = Integer.parseInt(HTTP_SO_TIMEOUT_TEXT);
      }
      catch (NumberFormatException localException3)
      {
        try
        {
          HTTP_SOCKET_BUFFER_SIZE = Integer.parseInt(HTTP_SOCKET_BUFFER_SIZE_TEXT);
        }
        catch (NumberFormatException localException3)
        {
          try
          {
            DEBUG = Boolean.parseBoolean(DEBUG_TEXT);
          }
          catch (Exception localException3)
          {
            try
            {
              PRE = Boolean.parseBoolean(PRE_TEXT);
              new StringBuilder("[GlobalConstant]Boolean.parseBoolean(PRE_TEXT) = ").append(PRE).toString();
              LogUtils.c();
            }
            catch (Exception localException3)
            {
              try
              {
                TID_COUNT = Integer.parseInt(TID_COUNT_TEXT);
              }
              catch (NumberFormatException localException3)
              {
                try
                {
                  RSA_GET_COUNT = Integer.parseInt(RSA_GET_COUNT_TEXT);
                }
                catch (NumberFormatException localException3)
                {
                  try
                  {
                    DRAW_ROW_FRAME = Boolean.parseBoolean(DRAW_ROW_FRAME_TEXT);
                  }
                  catch (Exception localException3)
                  {
                    try
                    {
                      while (true)
                      {
                        DRAW_COLUMN_FRAME = Boolean.parseBoolean(DRAW_COLUMN_FRAME_TEXT);
                        if (TextUtils.isEmpty(MONITOR_URL))
                          MONITOR_URL = "https://alipay.com";
                        if (TextUtils.isEmpty(HTTP_URL))
                          HTTP_URL = "http://mclient.alipay.com/gateway.do";
                        if (TextUtils.isEmpty(DEFAULT_SERVER_NAME))
                          DEFAULT_SERVER_NAME = "P610";
                        if (TextUtils.isEmpty(NAMESPACE))
                          NAMESPACE = "com.alipay.mobilecashier";
                        if (TextUtils.isEmpty(API_NAME))
                          API_NAME = "main";
                        if (TextUtils.isEmpty(API_VERSION))
                          API_VERSION = "1.0.0";
                        if (DEBUG)
                        {
                          String str = paramContext.getSharedPreferences("global_settings", 0).getString("url", "");
                          if (!TextUtils.isEmpty(str))
                            HTTP_URL = str;
                        }
                        return;
                        localNumberFormatException1 = localNumberFormatException1;
                        HTTP_CONNECTION_TIMEOUT = 20000;
                        continue;
                        localNumberFormatException2 = localNumberFormatException2;
                        HTTP_SO_TIMEOUT = 20000;
                        continue;
                        localNumberFormatException3 = localNumberFormatException3;
                        HTTP_SOCKET_BUFFER_SIZE = 16384;
                        continue;
                        localException1 = localException1;
                        DEBUG = false;
                        continue;
                        localException2 = localException2;
                        PRE = false;
                        new StringBuilder("[GlobalConstant]Exception = ").append(PRE).toString();
                        LogUtils.c();
                        continue;
                        localNumberFormatException4 = localNumberFormatException4;
                        TID_COUNT = 14;
                        continue;
                        localNumberFormatException5 = localNumberFormatException5;
                        RSA_GET_COUNT = 3;
                        continue;
                        localException3 = localException3;
                        DRAW_ROW_FRAME = false;
                      }
                    }
                    catch (Exception localException4)
                    {
                      while (true)
                        DRAW_COLUMN_FRAME = false;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public static void loadProperties(Context paramContext, InputStream paramInputStream, boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        Properties localProperties = new Properties();
        localProperties.load(paramInputStream);
        if ((!paramBoolean) || (TextUtils.isEmpty(HTTP_CONNECTION_TIMEOUT_TEXT)))
          HTTP_CONNECTION_TIMEOUT_TEXT = localProperties.getProperty("http_connection_timeout", "");
        if ((!paramBoolean) || (TextUtils.isEmpty(HTTP_SO_TIMEOUT_TEXT)))
          HTTP_SO_TIMEOUT_TEXT = localProperties.getProperty("http_so_timeout", "");
        if ((!paramBoolean) || (TextUtils.isEmpty(HTTP_SOCKET_BUFFER_SIZE_TEXT)))
          HTTP_SOCKET_BUFFER_SIZE_TEXT = localProperties.getProperty("http_socket_buffer_size", "");
        if ((!paramBoolean) || (TextUtils.isEmpty(DEBUG_TEXT)))
          DEBUG_TEXT = localProperties.getProperty("debug", "");
        if ((!paramBoolean) || (TextUtils.isEmpty(PRE_TEXT)))
        {
          PRE_TEXT = localProperties.getProperty("pre", "");
          new StringBuilder("[GlobalConstant]prop.getProperty = ").append(PRE_TEXT).toString();
          LogUtils.c();
        }
        if ((!paramBoolean) || (TextUtils.isEmpty(TID_COUNT_TEXT)))
          TID_COUNT_TEXT = localProperties.getProperty("tid_count", "");
        if ((!paramBoolean) || (TextUtils.isEmpty(RSA_GET_COUNT_TEXT)))
          RSA_GET_COUNT_TEXT = localProperties.getProperty("rsa_get_count", "");
        SharedPreferences localSharedPreferences;
        if ((!paramBoolean) || (TextUtils.isEmpty(RSA_PUBLIC)))
        {
          localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
          String str1 = localSharedPreferences.getString("trideskey", null);
          if (!TextUtils.isEmpty(str1))
            RSA_PUBLIC = str1;
        }
        else
        {
          if ((!paramBoolean) || (TextUtils.isEmpty(DRAW_ROW_FRAME_TEXT)))
            DRAW_ROW_FRAME_TEXT = localProperties.getProperty("draw_row_frame", "");
          if ((!paramBoolean) || (TextUtils.isEmpty(DRAW_COLUMN_FRAME_TEXT)))
            DRAW_COLUMN_FRAME_TEXT = localProperties.getProperty("draw_column_frame", "");
          if ((!paramBoolean) || (TextUtils.isEmpty(MONITOR_URL)))
            MONITOR_URL = localProperties.getProperty("monitor_url", "");
          if ((!paramBoolean) || (TextUtils.isEmpty(HTTP_URL)))
            HTTP_URL = localProperties.getProperty("http_url", "");
          if ((!paramBoolean) || (TextUtils.isEmpty(DEFAULT_SERVER_NAME)))
            DEFAULT_SERVER_NAME = localProperties.getProperty("default_server_name", "");
          if ((!paramBoolean) || (TextUtils.isEmpty(NAMESPACE)))
            NAMESPACE = localProperties.getProperty("namespace", "");
          if ((!paramBoolean) || (TextUtils.isEmpty(API_NAME)))
            API_NAME = localProperties.getProperty("api_name", "");
          if ((!paramBoolean) || (TextUtils.isEmpty(API_VERSION)))
            API_VERSION = localProperties.getProperty("api_version", "");
          if ((!paramBoolean) || (TextUtils.isEmpty(SID)))
            SID = localProperties.getProperty("sid", "1");
          ChannelConfig localChannelConfig = new ChannelConfig();
          localChannelConfig.a(AlipayApplication.getInstance().getMicroApplicationContext());
          String str2 = localChannelConfig.a("isSandBox");
          if ((str2 == null) || (!"true".equalsIgnoreCase(str2)))
            break label571;
          i = 1;
          if (i == 0)
            break;
          MONITOR_URL = "https://mobiletestabc.alipaydev.com/mobileclientgw/net/gateway.do";
          HTTP_URL = "https://mobiletestabc.alipaydev.com/mobileclientgw/net/gateway.do ";
          return;
        }
        RSA_PUBLIC = localProperties.getProperty("rsa_public", "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB");
        localSharedPreferences.edit().putString("trideskey", RSA_PUBLIC);
        continue;
      }
      catch (Exception localException)
      {
        LogUtils.a(localException);
        return;
      }
      label571: int i = 0;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.GlobalConstant
 * JD-Core Version:    0.6.2
 */