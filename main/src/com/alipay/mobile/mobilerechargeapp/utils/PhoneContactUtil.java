package com.alipay.mobile.mobilerechargeapp.utils;

import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.ArrayList;

public class PhoneContactUtil
{
  public static String a(String paramString)
  {
    String str;
    if (paramString == null)
      str = "";
    do
    {
      return str;
      str = paramString.replaceAll("[-| ]", "");
    }
    while (str.length() <= 11);
    return str.substring(-11 + str.length());
  }

  public static void a(Context paramContext, Intent paramIntent, SelectAccountListener paramSelectAccountListener)
  {
    new String[] { "", "" };
    if (paramIntent == null)
      return;
    Uri localUri1 = paramIntent.getData();
    ArrayList localArrayList = new ArrayList();
    Uri localUri2 = Uri.parse("content://com.android.contacts/contacts/" + ContentUris.parseId(localUri1) + "/data");
    Cursor localCursor = paramContext.getContentResolver().query(localUri2, new String[] { "data1", "display_name" }, null, null, null);
    if (localCursor != null)
    {
      label213: 
      while (localCursor.moveToNext())
      {
        String str1 = a(localCursor.getString(localCursor.getColumnIndex("data1")));
        String str2 = localCursor.getString(localCursor.getColumnIndex("display_name"));
        if (str2 == null);
        for (String str3 = ""; ; str3 = str2.replaceAll("[(|)]", ""))
        {
          if (!Validator.a(str1))
            break label213;
          if (str3.equals(str1))
            str3 = "";
          localArrayList.add(new String[] { str1, str3 });
          break;
        }
      }
      localCursor.close();
    }
    if (localArrayList.size() > 1)
    {
      String[] arrayOfString2 = a(localArrayList);
      new AlertDialog.Builder(paramContext).setTitle("选择联系人").setSingleChoiceItems(arrayOfString2, 0, new a(paramSelectAccountListener, localArrayList)).show();
      return;
    }
    if (localArrayList.size() == 1)
    {
      String[] arrayOfString1 = (String[])localArrayList.get(0);
      paramSelectAccountListener.a(arrayOfString1[0], arrayOfString1[1]);
      return;
    }
    paramSelectAccountListener.a("", "");
  }

  public static void a(ActivityApplication paramActivityApplication)
  {
    MicroApplicationContext localMicroApplicationContext = paramActivityApplication.getMicroApplicationContext();
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.PICK");
    localIntent.setData(ContactsContract.Contacts.CONTENT_URI);
    localMicroApplicationContext.startExtActivityForResult(paramActivityApplication, localIntent, 1);
  }

  private static String[] a(ArrayList paramArrayList)
  {
    String[] arrayOfString = new String[paramArrayList.size()];
    int i = 0;
    if (i < paramArrayList.size())
    {
      String str = ((String[])paramArrayList.get(i))[1];
      int j;
      if ((str == null) || (str.length() == 0))
      {
        j = 1;
        label43: if (j == 0)
          break label73;
        arrayOfString[i] = ((String[])paramArrayList.get(i))[0];
      }
      while (true)
      {
        i++;
        break;
        j = 0;
        break label43;
        label73: arrayOfString[i] = (((String[])paramArrayList.get(i))[0] + "(" + ((String[])paramArrayList.get(i))[1] + ")");
      }
    }
    return arrayOfString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.utils.PhoneContactUtil
 * JD-Core Version:    0.6.2
 */