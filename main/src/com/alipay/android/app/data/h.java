package com.alipay.android.app.data;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.alipay.android.app.script.IPhoneScriptable;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.lib.phone.SmsReader;
import java.lang.ref.WeakReference;

final class h
  implements IPhoneScriptable
{
  private WeakReference a;
  private boolean b = false;
  private SmsReader c = new SmsReader();

  public final void a(ValidatedFrameData paramValidatedFrameData)
  {
    this.a = new WeakReference(paramValidatedFrameData);
  }

  public final void call(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + paramString));
    localIntent.setFlags(1073741824);
    GlobalContext.a().b().startActivity(localIntent);
  }

  public final void dispose()
  {
    if (this.c != null)
      this.c.a();
  }

  public final void readsms(String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, String[] paramArrayOfString)
  {
    if (this.b)
      return;
    this.c.b();
    this.b = true;
    new Thread(new i(this, paramString2, paramInt2, paramArrayOfString, paramString1, paramInt1, paramString3)).start();
  }

  // ERROR //
  public final void sendMsg(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: invokestatic 114	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   3: invokevirtual 117	com/alipay/android/app/sys/GlobalContext:b	()Landroid/content/Context;
    //   6: astore_3
    //   7: aload_3
    //   8: ldc 147
    //   10: iconst_0
    //   11: invokevirtual 151	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   14: ldc 153
    //   16: iconst_0
    //   17: invokeinterface 159 3 0
    //   22: istore 4
    //   24: getstatic 164	com/alipay/android/app/pay/GlobalConstant:DEBUG	Z
    //   27: ifeq +14 -> 41
    //   30: iload 4
    //   32: ifeq +9 -> 41
    //   35: aload_3
    //   36: aload_2
    //   37: invokestatic 169	com/alipay/android/app/util/BizDebugUtils:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   40: return
    //   41: new 171	android/content/IntentFilter
    //   44: dup
    //   45: invokespecial 172	android/content/IntentFilter:<init>	()V
    //   48: astore 6
    //   50: aload 6
    //   52: ldc 174
    //   54: invokevirtual 177	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   57: aload 6
    //   59: ldc 179
    //   61: invokevirtual 177	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   64: aload_3
    //   65: new 181	com/alipay/android/app/SmsSendReceiver
    //   68: dup
    //   69: invokespecial 182	com/alipay/android/app/SmsSendReceiver:<init>	()V
    //   72: aload 6
    //   74: invokevirtual 186	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   77: pop
    //   78: invokestatic 192	android/telephony/SmsManager:getDefault	()Landroid/telephony/SmsManager;
    //   81: astore 8
    //   83: new 79	android/content/Intent
    //   86: dup
    //   87: invokespecial 193	android/content/Intent:<init>	()V
    //   90: astore 9
    //   92: aload 9
    //   94: ldc 174
    //   96: invokevirtual 197	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   99: pop
    //   100: aload 9
    //   102: ldc 199
    //   104: invokestatic 32	java/lang/System:currentTimeMillis	()J
    //   107: invokevirtual 203	android/content/Intent:putExtra	(Ljava/lang/String;J)Landroid/content/Intent;
    //   110: pop
    //   111: aload_3
    //   112: iconst_0
    //   113: aload 9
    //   115: iconst_0
    //   116: invokestatic 209	android/app/PendingIntent:getBroadcast	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   119: astore 12
    //   121: new 79	android/content/Intent
    //   124: dup
    //   125: invokespecial 193	android/content/Intent:<init>	()V
    //   128: astore 13
    //   130: aload 13
    //   132: ldc 179
    //   134: invokevirtual 197	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   137: pop
    //   138: aload 13
    //   140: ldc 199
    //   142: invokestatic 32	java/lang/System:currentTimeMillis	()J
    //   145: invokevirtual 203	android/content/Intent:putExtra	(Ljava/lang/String;J)Landroid/content/Intent;
    //   148: pop
    //   149: aload_3
    //   150: iconst_0
    //   151: aload 13
    //   153: iconst_0
    //   154: invokestatic 209	android/app/PendingIntent:getBroadcast	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   157: astore 16
    //   159: aload 8
    //   161: invokevirtual 213	java/lang/Object:getClass	()Ljava/lang/Class;
    //   164: astore 18
    //   166: iconst_1
    //   167: anewarray 215	java/lang/Class
    //   170: astore 19
    //   172: aload 19
    //   174: iconst_0
    //   175: getstatic 221	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   178: aastore
    //   179: aload 18
    //   181: ldc 223
    //   183: aload 19
    //   185: invokevirtual 227	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   188: astore 20
    //   190: iconst_1
    //   191: anewarray 4	java/lang/Object
    //   194: astore 21
    //   196: aload 21
    //   198: iconst_0
    //   199: invokestatic 114	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   202: invokevirtual 231	com/alipay/android/app/sys/GlobalContext:e	()I
    //   205: invokestatic 235	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   208: aastore
    //   209: aload 20
    //   211: aload 8
    //   213: aload 21
    //   215: invokevirtual 241	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   218: pop
    //   219: aload 8
    //   221: aload_1
    //   222: aconst_null
    //   223: aload_2
    //   224: aload 12
    //   226: aload 16
    //   228: invokevirtual 245	android/telephony/SmsManager:sendTextMessage	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    //   231: return
    //   232: astore 5
    //   234: aload 5
    //   236: invokestatic 247	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   239: return
    //   240: astore 17
    //   242: aload 17
    //   244: invokevirtual 250	java/lang/Exception:printStackTrace	()V
    //   247: goto -28 -> 219
    //
    // Exception table:
    //   from	to	target	type
    //   24	30	232	java/lang/Exception
    //   35	40	232	java/lang/Exception
    //   41	159	232	java/lang/Exception
    //   219	231	232	java/lang/Exception
    //   242	247	232	java/lang/Exception
    //   159	219	240	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.h
 * JD-Core Version:    0.6.2
 */