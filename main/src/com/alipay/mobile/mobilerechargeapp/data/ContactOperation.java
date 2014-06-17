package com.alipay.mobile.mobilerechargeapp.data;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ContactOperation
{
  private Context a;
  private ContactOperation.LoadStateListener b = null;

  public ContactOperation(Context paramContext, ContactOperation.LoadStateListener paramLoadStateListener)
  {
    this.a = paramContext;
    this.b = paramLoadStateListener;
  }

  private static ArrayList a(ArrayList paramArrayList)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    for (int i = 0; i < paramArrayList.size(); i++)
      if (!localArrayList2.contains(((ItemData)paramArrayList.get(i)).b))
      {
        localArrayList2.add(((ItemData)paramArrayList.get(i)).b);
        localArrayList1.add(paramArrayList.get(i));
      }
    return localArrayList1;
  }

  public final ContactOperation a()
  {
    new a(this, (byte)0).execute(new Cursor[0]);
    return this;
  }

  public final ArrayList b()
  {
    Uri localUri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
    String[] arrayOfString = { "display_name", "data1" };
    Cursor localCursor = this.a.getContentResolver().query(localUri, arrayOfString, null, null, null);
    ArrayList localArrayList = null;
    if (localCursor != null)
    {
      localArrayList = new ArrayList();
      label85: label226: 
      while (localCursor.moveToNext())
      {
        String str1 = localCursor.getString(localCursor.getColumnIndex("data1"));
        String str2;
        String str3;
        String str4;
        if (str1 == null)
        {
          str2 = "";
          str3 = localCursor.getString(localCursor.getColumnIndex("display_name"));
          if (str3 != null)
            break label196;
          str4 = "";
          label110: if (str2 != null)
            break label210;
        }
        for (boolean bool = false; ; bool = Pattern.compile("1\\d{10}").matcher(str2).matches())
        {
          if (!bool)
            break label226;
          ItemData localItemData = new ItemData();
          localItemData.a = str4;
          localItemData.b = str2;
          localArrayList.add(localItemData);
          break;
          str2 = str1.replaceAll("[-| ]", "");
          if (str2.length() <= 11)
            break label85;
          str2 = str2.substring(-11 + str2.length());
          break label85;
          str4 = str3.replaceAll("[(|)]", "");
          break label110;
        }
      }
      label196: label210: localCursor.close();
    }
    return a(localArrayList);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.data.ContactOperation
 * JD-Core Version:    0.6.2
 */