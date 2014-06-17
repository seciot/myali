package com.alipay.mobileprod.biz.contact.contactuploader;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO;
import com.alipay.mobile.common.ui.contacts.model.ContactPerson;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobileprod.biz.contact.model.UploadContact;
import com.alipay.mobileprod.biz.contact.model.UploadContactRecord;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ContactsUploader
{
  private static final String[] a = { "display_name", "has_phone_number", "lookup" };
  private static final Uri b = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
  private static final String[] c = { "data1" };
  private Context d = null;
  private MicroApplicationContext e = null;
  private UserInfo f = null;

  public ContactsUploader(MicroApplicationContext paramMicroApplicationContext, UserInfo paramUserInfo)
  {
    this.d = paramMicroApplicationContext.getApplicationContext();
    this.e = paramMicroApplicationContext;
    this.f = paramUserInfo;
  }

  private UploadContact a(ArrayList<ContactsUploader.ContactInfo> paramArrayList)
  {
    UploadContact localUploadContact = new UploadContact();
    localUploadContact.ownerUid = this.f.getUserId();
    localUploadContact.ownerName = this.f.getUserName();
    localUploadContact.ownerMobile = this.f.getMobileNumber();
    localUploadContact.deviceId = DeviceInfo.getInstance().getmDid();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      ContactsUploader.ContactInfo localContactInfo = (ContactsUploader.ContactInfo)localIterator.next();
      UploadContactRecord localUploadContactRecord = new UploadContactRecord();
      localUploadContactRecord.name = localContactInfo.phoneName;
      localUploadContactRecord.mobile = localContactInfo.phoneNumber;
      localUploadContactRecord.memo = "";
      localArrayList.add(localUploadContactRecord);
    }
    localUploadContact.recordList = localArrayList;
    return localUploadContact;
  }

  private ArrayList<ContactsUploader.ContactInfo> a()
  {
    ArrayList localArrayList = new ArrayList();
    if (MobileContactDAO.getInstance().getLoadState() > 100)
    {
      List localList = MobileContactDAO.getInstance().getContactData();
      for (int i = 0; i < localList.size(); i++)
      {
        ContactsUploader.ContactInfo localContactInfo2 = new ContactsUploader.ContactInfo();
        localContactInfo2.phoneName = ((ContactPerson)localList.get(i)).displayName;
        localContactInfo2.phoneNumber = ((ContactPerson)localList.get(i)).mobileNumber;
        if ((localContactInfo2.phoneNumber != null) && (localContactInfo2.phoneNumber.length() != 0) && (!localArrayList.contains(localContactInfo2)))
          localArrayList.add(localContactInfo2);
      }
      return localArrayList;
    }
    Cursor localCursor = this.d.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[] { "_id", "display_name", "data1", "sort_key" }, null, null, null);
    localCursor.moveToFirst();
    if (!localCursor.isAfterLast())
    {
      ContactsUploader.ContactInfo localContactInfo1 = new ContactsUploader.ContactInfo();
      localContactInfo1.phoneName = localCursor.getString(1);
      String str1 = localCursor.getString(2);
      Matcher localMatcher;
      if (str1 != null)
      {
        String str3 = str1.replaceAll(" ", "").replaceAll("-", "");
        localMatcher = Pattern.compile("^((\\+{0,1}86){0,1})1[0-9]{10}").matcher(str3);
        if (!localMatcher.matches());
      }
      for (String str2 = localMatcher.group(0).replaceFirst("^(\\+{0,1}86)", ""); ; str2 = null)
      {
        localContactInfo1.phoneNumber = str2;
        if ((localContactInfo1.phoneNumber != null) && (localContactInfo1.phoneNumber.length() != 0) && (!localArrayList.contains(localContactInfo1)))
          localArrayList.add(localContactInfo1);
        localCursor.moveToNext();
        break;
      }
    }
    localCursor.close();
    new StringBuilder("getUserContacts query done ").append(localArrayList.size()).toString();
    return localArrayList;
  }

  private void a(ArrayList<ContactsUploader.ContactInfo> paramArrayList, ContactsUploaderCallBack paramContactsUploaderCallBack, boolean paramBoolean)
  {
    UploadContact localUploadContact = a(paramArrayList);
    do
      try
      {
        boolean bool = new ContactsUploaderProxy(this.e).uploadContacts(localUploadContact, paramBoolean);
        new StringBuilder("upload done ").append(paramBoolean).toString();
        if (bool)
        {
          ArrayList localArrayList = b();
          localArrayList.addAll(paramArrayList);
          b(localArrayList);
          SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(this.d).edit();
          localEditor.putLong("upload_contacts_all_time_interval" + this.f.getUserId(), new Date().getTime());
          localEditor.commit();
          if (paramContactsUploaderCallBack != null)
            paramContactsUploaderCallBack.uploadSuccess();
          return;
        }
      }
      catch (Exception localException)
      {
        while (paramContactsUploaderCallBack == null);
        paramContactsUploaderCallBack.uploadFailed();
        return;
      }
    while (paramContactsUploaderCallBack == null);
    paramContactsUploaderCallBack.uploadFailed();
  }

  // ERROR //
  private ArrayList<ContactsUploader.ContactInfo> b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 44	com/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader:d	Landroid/content/Context;
    //   4: new 247	java/lang/StringBuilder
    //   7: dup
    //   8: ldc_w 348
    //   11: invokespecial 252	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 48	com/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader:f	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   18: invokevirtual 64	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   21: invokevirtual 284	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: invokevirtual 260	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: invokevirtual 352	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   30: astore 22
    //   32: aload 22
    //   34: astore_3
    //   35: aload_3
    //   36: invokevirtual 357	java/io/FileInputStream:available	()I
    //   39: newarray byte
    //   41: astore 27
    //   43: aload_3
    //   44: aload 27
    //   46: invokevirtual 361	java/io/FileInputStream:read	([B)I
    //   49: pop
    //   50: new 363	java/io/ByteArrayInputStream
    //   53: dup
    //   54: invokestatic 367	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   57: aload 27
    //   59: invokestatic 373	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor:decrypt	(Landroid/content/ContextWrapper;[B)[B
    //   62: invokespecial 376	java/io/ByteArrayInputStream:<init>	([B)V
    //   65: astore 4
    //   67: new 378	java/io/ObjectInputStream
    //   70: dup
    //   71: aload 4
    //   73: invokespecial 381	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   76: astore_2
    //   77: aload_2
    //   78: invokevirtual 384	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   81: checkcast 94	java/util/ArrayList
    //   84: astore 10
    //   86: aload_2
    //   87: invokevirtual 385	java/io/ObjectInputStream:close	()V
    //   90: aload 4
    //   92: invokevirtual 386	java/io/ByteArrayInputStream:close	()V
    //   95: aload_3
    //   96: ifnull +7 -> 103
    //   99: aload_3
    //   100: invokevirtual 387	java/io/FileInputStream:close	()V
    //   103: aload 10
    //   105: areturn
    //   106: astore 18
    //   108: aconst_null
    //   109: astore 4
    //   111: aconst_null
    //   112: astore_2
    //   113: aconst_null
    //   114: astore_3
    //   115: new 94	java/util/ArrayList
    //   118: dup
    //   119: invokespecial 95	java/util/ArrayList:<init>	()V
    //   122: astore 10
    //   124: aload_2
    //   125: ifnull +7 -> 132
    //   128: aload_2
    //   129: invokevirtual 385	java/io/ObjectInputStream:close	()V
    //   132: aload 4
    //   134: ifnull +8 -> 142
    //   137: aload 4
    //   139: invokevirtual 386	java/io/ByteArrayInputStream:close	()V
    //   142: aload_3
    //   143: ifnull -40 -> 103
    //   146: aload_3
    //   147: invokevirtual 387	java/io/FileInputStream:close	()V
    //   150: aload 10
    //   152: areturn
    //   153: astore 19
    //   155: aload 10
    //   157: areturn
    //   158: astore 14
    //   160: aconst_null
    //   161: astore 4
    //   163: aconst_null
    //   164: astore_2
    //   165: aconst_null
    //   166: astore_3
    //   167: new 94	java/util/ArrayList
    //   170: dup
    //   171: invokespecial 95	java/util/ArrayList:<init>	()V
    //   174: astore 10
    //   176: aload_2
    //   177: ifnull +7 -> 184
    //   180: aload_2
    //   181: invokevirtual 385	java/io/ObjectInputStream:close	()V
    //   184: aload 4
    //   186: ifnull +8 -> 194
    //   189: aload 4
    //   191: invokevirtual 386	java/io/ByteArrayInputStream:close	()V
    //   194: aload_3
    //   195: ifnull -92 -> 103
    //   198: aload_3
    //   199: invokevirtual 387	java/io/FileInputStream:close	()V
    //   202: aload 10
    //   204: areturn
    //   205: astore 15
    //   207: aload 10
    //   209: areturn
    //   210: astore 9
    //   212: aconst_null
    //   213: astore 4
    //   215: aconst_null
    //   216: astore_2
    //   217: aconst_null
    //   218: astore_3
    //   219: new 94	java/util/ArrayList
    //   222: dup
    //   223: invokespecial 95	java/util/ArrayList:<init>	()V
    //   226: astore 10
    //   228: aload_2
    //   229: ifnull +7 -> 236
    //   232: aload_2
    //   233: invokevirtual 385	java/io/ObjectInputStream:close	()V
    //   236: aload 4
    //   238: ifnull +8 -> 246
    //   241: aload 4
    //   243: invokevirtual 386	java/io/ByteArrayInputStream:close	()V
    //   246: aload_3
    //   247: ifnull -144 -> 103
    //   250: aload_3
    //   251: invokevirtual 387	java/io/FileInputStream:close	()V
    //   254: aload 10
    //   256: areturn
    //   257: astore 11
    //   259: aload 10
    //   261: areturn
    //   262: astore_1
    //   263: aconst_null
    //   264: astore_2
    //   265: aconst_null
    //   266: astore_3
    //   267: aconst_null
    //   268: astore 4
    //   270: aload_1
    //   271: astore 5
    //   273: aload_2
    //   274: ifnull +7 -> 281
    //   277: aload_2
    //   278: invokevirtual 385	java/io/ObjectInputStream:close	()V
    //   281: aload 4
    //   283: ifnull +8 -> 291
    //   286: aload 4
    //   288: invokevirtual 386	java/io/ByteArrayInputStream:close	()V
    //   291: aload_3
    //   292: ifnull +7 -> 299
    //   295: aload_3
    //   296: invokevirtual 387	java/io/FileInputStream:close	()V
    //   299: aload 5
    //   301: athrow
    //   302: astore 32
    //   304: goto -214 -> 90
    //   307: astore 33
    //   309: goto -214 -> 95
    //   312: astore 34
    //   314: aload 10
    //   316: areturn
    //   317: astore 21
    //   319: goto -187 -> 132
    //   322: astore 20
    //   324: goto -182 -> 142
    //   327: astore 17
    //   329: goto -145 -> 184
    //   332: astore 16
    //   334: goto -140 -> 194
    //   337: astore 13
    //   339: goto -103 -> 236
    //   342: astore 12
    //   344: goto -98 -> 246
    //   347: astore 8
    //   349: goto -68 -> 281
    //   352: astore 7
    //   354: goto -63 -> 291
    //   357: astore 6
    //   359: goto -60 -> 299
    //   362: astore 26
    //   364: aload 26
    //   366: astore 5
    //   368: aconst_null
    //   369: astore 4
    //   371: aconst_null
    //   372: astore_2
    //   373: goto -100 -> 273
    //   376: astore 38
    //   378: aload 38
    //   380: astore 5
    //   382: aconst_null
    //   383: astore_2
    //   384: goto -111 -> 273
    //   387: astore 5
    //   389: goto -116 -> 273
    //   392: astore 25
    //   394: aconst_null
    //   395: astore 4
    //   397: aconst_null
    //   398: astore_2
    //   399: goto -180 -> 219
    //   402: astore 37
    //   404: aconst_null
    //   405: astore_2
    //   406: goto -187 -> 219
    //   409: astore 31
    //   411: goto -192 -> 219
    //   414: astore 24
    //   416: aconst_null
    //   417: astore 4
    //   419: aconst_null
    //   420: astore_2
    //   421: goto -254 -> 167
    //   424: astore 36
    //   426: aconst_null
    //   427: astore_2
    //   428: goto -261 -> 167
    //   431: astore 30
    //   433: goto -266 -> 167
    //   436: astore 23
    //   438: aconst_null
    //   439: astore 4
    //   441: aconst_null
    //   442: astore_2
    //   443: goto -328 -> 115
    //   446: astore 35
    //   448: aconst_null
    //   449: astore_2
    //   450: goto -335 -> 115
    //   453: astore 29
    //   455: goto -340 -> 115
    //
    // Exception table:
    //   from	to	target	type
    //   0	32	106	java/io/FileNotFoundException
    //   146	150	153	java/io/IOException
    //   0	32	158	java/io/IOException
    //   198	202	205	java/io/IOException
    //   0	32	210	java/lang/Exception
    //   250	254	257	java/io/IOException
    //   0	32	262	finally
    //   86	90	302	java/io/IOException
    //   90	95	307	java/io/IOException
    //   99	103	312	java/io/IOException
    //   128	132	317	java/io/IOException
    //   137	142	322	java/io/IOException
    //   180	184	327	java/io/IOException
    //   189	194	332	java/io/IOException
    //   232	236	337	java/io/IOException
    //   241	246	342	java/io/IOException
    //   277	281	347	java/io/IOException
    //   286	291	352	java/io/IOException
    //   295	299	357	java/io/IOException
    //   35	67	362	finally
    //   67	77	376	finally
    //   77	86	387	finally
    //   115	124	387	finally
    //   167	176	387	finally
    //   219	228	387	finally
    //   35	67	392	java/lang/Exception
    //   67	77	402	java/lang/Exception
    //   77	86	409	java/lang/Exception
    //   35	67	414	java/io/IOException
    //   67	77	424	java/io/IOException
    //   77	86	431	java/io/IOException
    //   35	67	436	java/io/FileNotFoundException
    //   67	77	446	java/io/FileNotFoundException
    //   77	86	453	java/io/FileNotFoundException
  }

  // ERROR //
  private boolean b(ArrayList<ContactsUploader.ContactInfo> paramArrayList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 44	com/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader:d	Landroid/content/Context;
    //   6: new 247	java/lang/StringBuilder
    //   9: dup
    //   10: ldc_w 348
    //   13: invokespecial 252	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   16: aload_0
    //   17: getfield 48	com/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader:f	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   20: invokevirtual 64	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   23: invokevirtual 284	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 260	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: iconst_0
    //   30: invokevirtual 394	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   33: astore 20
    //   35: aload 20
    //   37: astore 5
    //   39: new 396	java/io/ByteArrayOutputStream
    //   42: dup
    //   43: invokespecial 397	java/io/ByteArrayOutputStream:<init>	()V
    //   46: astore 15
    //   48: new 399	java/io/ObjectOutputStream
    //   51: dup
    //   52: aload 15
    //   54: invokespecial 402	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   57: astore 4
    //   59: aload 4
    //   61: aload_1
    //   62: invokevirtual 406	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   65: aload 5
    //   67: invokestatic 367	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   70: aload 15
    //   72: invokevirtual 410	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   75: invokestatic 413	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor:encrypt	(Landroid/content/ContextWrapper;[B)[B
    //   78: invokevirtual 418	java/io/FileOutputStream:write	([B)V
    //   81: aload 4
    //   83: invokevirtual 419	java/io/ObjectOutputStream:close	()V
    //   86: aload 15
    //   88: invokevirtual 420	java/io/ByteArrayOutputStream:close	()V
    //   91: aload 5
    //   93: ifnull +8 -> 101
    //   96: aload 5
    //   98: invokevirtual 421	java/io/FileOutputStream:close	()V
    //   101: iconst_1
    //   102: istore 10
    //   104: iload 10
    //   106: ireturn
    //   107: astore 14
    //   109: aconst_null
    //   110: astore 15
    //   112: aconst_null
    //   113: astore 16
    //   115: aload_2
    //   116: ifnull +7 -> 123
    //   119: aload_2
    //   120: invokevirtual 419	java/io/ObjectOutputStream:close	()V
    //   123: aload 15
    //   125: ifnull +8 -> 133
    //   128: aload 15
    //   130: invokevirtual 420	java/io/ByteArrayOutputStream:close	()V
    //   133: iconst_0
    //   134: istore 10
    //   136: aload 16
    //   138: ifnull -34 -> 104
    //   141: aload 16
    //   143: invokevirtual 421	java/io/FileOutputStream:close	()V
    //   146: iconst_0
    //   147: ireturn
    //   148: astore 17
    //   150: iconst_0
    //   151: ireturn
    //   152: astore 9
    //   154: aconst_null
    //   155: astore 4
    //   157: aconst_null
    //   158: astore 5
    //   160: aload 4
    //   162: ifnull +8 -> 170
    //   165: aload 4
    //   167: invokevirtual 419	java/io/ObjectOutputStream:close	()V
    //   170: aload_2
    //   171: ifnull +7 -> 178
    //   174: aload_2
    //   175: invokevirtual 420	java/io/ByteArrayOutputStream:close	()V
    //   178: iconst_0
    //   179: istore 10
    //   181: aload 5
    //   183: ifnull -79 -> 104
    //   186: aload 5
    //   188: invokevirtual 421	java/io/FileOutputStream:close	()V
    //   191: iconst_0
    //   192: ireturn
    //   193: astore 11
    //   195: iconst_0
    //   196: ireturn
    //   197: astore_3
    //   198: aconst_null
    //   199: astore 4
    //   201: aconst_null
    //   202: astore 5
    //   204: aload 4
    //   206: ifnull +8 -> 214
    //   209: aload 4
    //   211: invokevirtual 419	java/io/ObjectOutputStream:close	()V
    //   214: aload_2
    //   215: ifnull +7 -> 222
    //   218: aload_2
    //   219: invokevirtual 420	java/io/ByteArrayOutputStream:close	()V
    //   222: aload 5
    //   224: ifnull +8 -> 232
    //   227: aload 5
    //   229: invokevirtual 421	java/io/FileOutputStream:close	()V
    //   232: aload_3
    //   233: athrow
    //   234: astore 23
    //   236: goto -150 -> 86
    //   239: astore 24
    //   241: goto -150 -> 91
    //   244: astore 25
    //   246: goto -145 -> 101
    //   249: astore 19
    //   251: goto -128 -> 123
    //   254: astore 18
    //   256: goto -123 -> 133
    //   259: astore 13
    //   261: goto -91 -> 170
    //   264: astore 12
    //   266: goto -88 -> 178
    //   269: astore 8
    //   271: goto -57 -> 214
    //   274: astore 7
    //   276: goto -54 -> 222
    //   279: astore 6
    //   281: goto -49 -> 232
    //   284: astore_3
    //   285: aconst_null
    //   286: astore_2
    //   287: aconst_null
    //   288: astore 4
    //   290: goto -86 -> 204
    //   293: astore_3
    //   294: aload 15
    //   296: astore_2
    //   297: aconst_null
    //   298: astore 4
    //   300: goto -96 -> 204
    //   303: astore_3
    //   304: aload 15
    //   306: astore_2
    //   307: goto -103 -> 204
    //   310: astore 29
    //   312: aconst_null
    //   313: astore_2
    //   314: aconst_null
    //   315: astore 4
    //   317: goto -157 -> 160
    //   320: astore 27
    //   322: aload 15
    //   324: astore_2
    //   325: aconst_null
    //   326: astore 4
    //   328: goto -168 -> 160
    //   331: astore 22
    //   333: aload 15
    //   335: astore_2
    //   336: goto -176 -> 160
    //   339: astore 28
    //   341: aload 5
    //   343: astore 16
    //   345: aconst_null
    //   346: astore 15
    //   348: aconst_null
    //   349: astore_2
    //   350: goto -235 -> 115
    //   353: astore 26
    //   355: aload 5
    //   357: astore 16
    //   359: aconst_null
    //   360: astore_2
    //   361: goto -246 -> 115
    //   364: astore 21
    //   366: aload 4
    //   368: astore_2
    //   369: aload 5
    //   371: astore 16
    //   373: goto -258 -> 115
    //
    // Exception table:
    //   from	to	target	type
    //   2	35	107	java/io/FileNotFoundException
    //   141	146	148	java/io/IOException
    //   2	35	152	java/lang/Exception
    //   186	191	193	java/io/IOException
    //   2	35	197	finally
    //   81	86	234	java/io/IOException
    //   86	91	239	java/io/IOException
    //   96	101	244	java/io/IOException
    //   119	123	249	java/io/IOException
    //   128	133	254	java/io/IOException
    //   165	170	259	java/io/IOException
    //   174	178	264	java/io/IOException
    //   209	214	269	java/io/IOException
    //   218	222	274	java/io/IOException
    //   227	232	279	java/io/IOException
    //   39	48	284	finally
    //   48	59	293	finally
    //   59	81	303	finally
    //   39	48	310	java/lang/Exception
    //   48	59	320	java/lang/Exception
    //   59	81	331	java/lang/Exception
    //   39	48	339	java/io/FileNotFoundException
    //   48	59	353	java/io/FileNotFoundException
    //   59	81	364	java/io/FileNotFoundException
  }

  public boolean isContactsUploadPermitted()
  {
    return PreferenceManager.getDefaultSharedPreferences(this.d).getBoolean("read_contacts_permission" + this.f.getUserId(), false);
  }

  public void permitContactsUpload()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(this.d).edit();
    localEditor.putBoolean("read_contacts_permission" + this.f.getUserId(), true);
    localEditor.commit();
  }

  public void uploadContactsWithStrategy(ContactsUploaderStrategy paramContactsUploaderStrategy, ContactsUploaderCallBack paramContactsUploaderCallBack)
  {
    if (!isContactsUploadPermitted())
    {
      if (paramContactsUploaderCallBack != null)
        paramContactsUploaderCallBack.uploadFailed();
      return;
    }
    if (!paramContactsUploaderStrategy.isAppend())
    {
      new ContactsUploader.1(this, paramContactsUploaderCallBack).start();
      return;
    }
    int i = paramContactsUploaderStrategy.getUploadAllTimeInterval();
    long l = PreferenceManager.getDefaultSharedPreferences(this.d).getLong("upload_contacts_all_time_interval" + this.f.getUserId(), 0L);
    if (new Date().getTime() - l < 1000L * (60L * (60L * (24L * i))));
    for (int j = 0; 1 == j; j = 1)
    {
      new ContactsUploader.2(this, paramContactsUploaderCallBack).start();
      return;
    }
    new ContactsUploader.3(this, paramContactsUploaderCallBack).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploader
 * JD-Core Version:    0.6.2
 */