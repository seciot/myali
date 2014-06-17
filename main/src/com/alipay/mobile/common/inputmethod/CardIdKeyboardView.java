package com.alipay.mobile.common.inputmethod;

import android.content.Context;
import android.inputmethodservice.Keyboard;
import android.inputmethodservice.KeyboardView.OnKeyboardActionListener;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.alipay.mobile.ui.R.anim;
import com.alipay.mobile.ui.R.xml;

public class CardIdKeyboardView extends InputKeyboardView
{
  private KeyboardView.OnKeyboardActionListener a = new CardIdKeyboardView.1(this);

  public CardIdKeyboardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setPreviewEnabled(false);
  }

  public CardIdKeyboardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setPreviewEnabled(false);
  }

  protected Keyboard getInputKeyboard()
  {
    return new CardIdKeyboardView.CardIdKeyboard(getContext(), R.xml.cardid_keyboard);
  }

  protected KeyboardView.OnKeyboardActionListener getKeyboardActionListener()
  {
    return this.a;
  }

  protected void hide()
  {
    Animation localAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_out_bottom);
    localAnimation.setAnimationListener(new CardIdKeyboardView.3(this));
    startAnimation(localAnimation);
  }

  protected void show()
  {
    Animation localAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom);
    localAnimation.setAnimationListener(new CardIdKeyboardView.2(this));
    startAnimation(localAnimation);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.inputmethod.CardIdKeyboardView
 * JD-Core Version:    0.6.2
 */