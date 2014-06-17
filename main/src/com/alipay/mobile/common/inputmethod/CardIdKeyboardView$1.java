package com.alipay.mobile.common.inputmethod;

import android.inputmethodservice.KeyboardView.OnKeyboardActionListener;
import android.view.KeyEvent;
import android.widget.EditText;

class CardIdKeyboardView$1
  implements KeyboardView.OnKeyboardActionListener
{
  CardIdKeyboardView$1(CardIdKeyboardView paramCardIdKeyboardView)
  {
  }

  public void onKey(int paramInt, int[] paramArrayOfInt)
  {
    if (paramInt == -3)
      this.this$0.mEditText.onEditorAction(6);
    if ((paramInt == -10) || (paramInt == -3))
    {
      this.this$0.focusOut();
      return;
    }
    long l = System.currentTimeMillis();
    KeyEvent localKeyEvent = new KeyEvent(l, l, 0, paramInt, 0, 0, 0, 0, 6);
    this.this$0.mEditText.dispatchKeyEvent(localKeyEvent);
  }

  public void onPress(int paramInt)
  {
  }

  public void onRelease(int paramInt)
  {
  }

  public void onText(CharSequence paramCharSequence)
  {
  }

  public void swipeDown()
  {
  }

  public void swipeLeft()
  {
  }

  public void swipeRight()
  {
  }

  public void swipeUp()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.inputmethod.CardIdKeyboardView.1
 * JD-Core Version:    0.6.2
 */