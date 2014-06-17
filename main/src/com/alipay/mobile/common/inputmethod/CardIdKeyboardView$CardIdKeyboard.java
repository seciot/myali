package com.alipay.mobile.common.inputmethod;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.inputmethodservice.Keyboard;
import android.inputmethodservice.Keyboard.Key;
import android.inputmethodservice.Keyboard.Row;

class CardIdKeyboardView$CardIdKeyboard extends Keyboard
{
  public CardIdKeyboardView$CardIdKeyboard(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }

  public CardIdKeyboardView$CardIdKeyboard(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext, paramInt1, paramInt2);
  }

  public CardIdKeyboardView$CardIdKeyboard(Context paramContext, int paramInt1, CharSequence paramCharSequence, int paramInt2, int paramInt3)
  {
    super(paramContext, paramInt1, paramCharSequence, paramInt2, paramInt3);
  }

  protected Keyboard.Key createKeyFromXml(Resources paramResources, Keyboard.Row paramRow, int paramInt1, int paramInt2, XmlResourceParser paramXmlResourceParser)
  {
    return new CardIdKeyboardView.CardIdKeyboard.CardIdKey(paramResources, paramRow, paramInt1, paramInt2, paramXmlResourceParser);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.inputmethod.CardIdKeyboardView.CardIdKeyboard
 * JD-Core Version:    0.6.2
 */