package com.alipay.android.mini.event;

import android.text.TextUtils;
import com.alipay.android.mini.uielement.ElementAction;
import org.json.JSONObject;

public enum ActionType
{
  private String N;
  private String O;
  private String P;
  private JSONObject Q;
  private String R;
  private String S;
  private String T;
  private boolean U;
  private boolean V;
  private boolean W;
  private String X;
  private String Y;
  private String Z;
  private JSONObject aa;

  static
  {
    A = new ActionType("ReturnData", 26, "js://returnData");
    B = new ActionType("LocalDismiss", 27, "js://localDismiss");
    C = new ActionType("Flush", 28, "js://flush");
    D = new ActionType("Alert", 29, "js://alert");
    E = new ActionType("OpenUri", 30, "js://openUri");
    F = new ActionType("Sheet", 31, "js://sheet");
    G = new ActionType("Pick", 32, "js://pick");
    H = new ActionType("ChangeSubmitValue", 33, "js://changeSubmitValue");
    I = new ActionType("ChangeHint", 34, "js://changeHint");
    J = new ActionType("ShowSafeCode", 35, "js://showSafeCode");
    K = new ActionType("OpenMenu", 36, "js://openmenu");
    L = new ActionType("Certificate", 37, "js://certificate");
    M = new ActionType("tel", 38, "js://tel");
    ActionType[] arrayOfActionType = new ActionType[39];
    arrayOfActionType[0] = a;
    arrayOfActionType[1] = b;
    arrayOfActionType[2] = c;
    arrayOfActionType[3] = d;
    arrayOfActionType[4] = e;
    arrayOfActionType[5] = f;
    arrayOfActionType[6] = g;
    arrayOfActionType[7] = h;
    arrayOfActionType[8] = i;
    arrayOfActionType[9] = j;
    arrayOfActionType[10] = k;
    arrayOfActionType[11] = l;
    arrayOfActionType[12] = m;
    arrayOfActionType[13] = n;
    arrayOfActionType[14] = o;
    arrayOfActionType[15] = p;
    arrayOfActionType[16] = q;
    arrayOfActionType[17] = r;
    arrayOfActionType[18] = s;
    arrayOfActionType[19] = t;
    arrayOfActionType[20] = u;
    arrayOfActionType[21] = v;
    arrayOfActionType[22] = w;
    arrayOfActionType[23] = x;
    arrayOfActionType[24] = y;
    arrayOfActionType[25] = z;
    arrayOfActionType[26] = A;
    arrayOfActionType[27] = B;
    arrayOfActionType[28] = C;
    arrayOfActionType[29] = D;
    arrayOfActionType[30] = E;
    arrayOfActionType[31] = F;
    arrayOfActionType[32] = G;
    arrayOfActionType[33] = H;
    arrayOfActionType[34] = I;
    arrayOfActionType[35] = J;
    arrayOfActionType[36] = K;
    arrayOfActionType[37] = L;
    arrayOfActionType[38] = M;
  }

  private ActionType(String arg3)
  {
    Object localObject;
    this.N = localObject;
  }

  public static ActionType[] a(ElementAction paramElementAction)
  {
    String str1;
    if (paramElementAction != null)
    {
      str1 = paramElementAction.e();
      if (TextUtils.isEmpty(str1))
        break label288;
    }
    label281: label288: for (String[] arrayOfString = str1.split(";"); ; arrayOfString = null)
    {
      if (arrayOfString == null)
      {
        ActionType[] arrayOfActionType4 = new ActionType[1];
        arrayOfActionType4[0] = a;
        return arrayOfActionType4;
      }
      ActionType[] arrayOfActionType2 = new ActionType[arrayOfString.length];
      int i1 = arrayOfString.length;
      int i2 = 0;
      int i3 = 0;
      ActionType localActionType1;
      int i5;
      label92: ActionType localActionType2;
      if (i2 < i1)
      {
        String str2 = arrayOfString[i2];
        localActionType1 = a;
        ActionType[] arrayOfActionType3 = values();
        int i4 = arrayOfActionType3.length;
        i5 = 0;
        if (i5 >= i4)
          break label281;
        localActionType2 = arrayOfActionType3[i5];
        if (!str2.startsWith(localActionType2.N));
      }
      while (true)
      {
        localActionType2.O = paramElementAction.e();
        localActionType2.P = paramElementAction.f();
        localActionType2.Q = paramElementAction.h();
        localActionType2.R = paramElementAction.g();
        localActionType2.S = paramElementAction.i();
        localActionType2.T = paramElementAction.j();
        localActionType2.U = paramElementAction.k();
        localActionType2.V = paramElementAction.l();
        localActionType2.W = paramElementAction.m();
        localActionType2.X = paramElementAction.c();
        localActionType2.Y = paramElementAction.d();
        localActionType2.Z = paramElementAction.b();
        localActionType2.aa = paramElementAction.a();
        arrayOfActionType2[i3] = localActionType2;
        int i6 = i3 + 1;
        i2++;
        i3 = i6;
        break;
        i5++;
        break label92;
        return arrayOfActionType2;
        ActionType[] arrayOfActionType1 = new ActionType[1];
        arrayOfActionType1[0] = a;
        return arrayOfActionType1;
        localActionType2 = localActionType1;
      }
    }
  }

  public final JSONObject a()
  {
    return this.aa;
  }

  public final String b()
  {
    return this.Z;
  }

  public final String c()
  {
    return this.X;
  }

  public final String d()
  {
    return this.Y;
  }

  public final String e()
  {
    return this.O;
  }

  public final String f()
  {
    return this.P;
  }

  public final JSONObject g()
  {
    return this.Q;
  }

  public final String h()
  {
    return this.S;
  }

  public final String i()
  {
    return this.T;
  }

  public final boolean j()
  {
    return this.U;
  }

  public final boolean k()
  {
    return this.V;
  }

  public final boolean l()
  {
    return this.W;
  }

  public final String m()
  {
    return this.R;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.event.ActionType
 * JD-Core Version:    0.6.2
 */