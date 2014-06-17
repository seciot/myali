package com.alipay.mobile.common.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.LinearLayout;
import com.alipay.mobile.ui.R.anim;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.style;

public class BottomPopupActionDialog extends Dialog
{
  private LayoutInflater a;
  private LinearLayout b;

  public BottomPopupActionDialog(Context paramContext)
  {
    super(paramContext, R.style.bottom_popup_dialog);
    this.a = LayoutInflater.from(paramContext);
    View localView = this.a.inflate(R.layout.bottom_popup_action_dialog, null);
    this.b = ((LinearLayout)localView.findViewById(R.id.action_container));
    setContentView(localView);
    setCanceledOnTouchOutside(false);
    localView.findViewById(R.id.btn_cancel).setOnClickListener(new BottomPopupActionDialog.1(this));
  }

  public void addAction(String paramString, View.OnClickListener paramOnClickListener)
  {
    View localView1 = this.a.inflate(R.layout.bottom_popup_action_dialog_subbtn, this.b, true);
    LinearLayout localLinearLayout = this.b;
    int i = localLinearLayout.getChildCount();
    if (i > 1)
    {
      View localView2 = localLinearLayout.getChildAt(i - 1);
      if (localView2 != null)
      {
        localLinearLayout.removeViewAt(i - 1);
        localLinearLayout.addView(localView2, 0);
      }
    }
    Button localButton = (Button)localView1.findViewById(R.id.btn_sub);
    localButton.setOnClickListener(paramOnClickListener);
    localButton.setText(paramString);
  }

  public void dismiss()
  {
    Animation localAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_out_bottom);
    localAnimation.setAnimationListener(new BottomPopupActionDialog.2(this));
    this.b.startAnimation(localAnimation);
  }

  protected void realDismiss()
  {
    super.dismiss();
  }

  public void show()
  {
    super.show();
    Animation localAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom);
    this.b.startAnimation(localAnimation);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.dialog.BottomPopupActionDialog
 * JD-Core Version:    0.6.2
 */