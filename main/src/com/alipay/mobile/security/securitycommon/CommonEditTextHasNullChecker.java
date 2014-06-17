package com.alipay.mobile.security.securitycommon;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TabHost;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public class CommonEditTextHasNullChecker
  implements TextWatcher, CompoundButton.OnCheckedChangeListener
{
  private List<EditText> a = new CopyOnWriteArrayList();
  private Set<Button> b = new HashSet();
  private Set<ImageButton> c = new HashSet();
  private Set<CheckBox> d = new HashSet();
  private boolean e = false;

  private void a()
  {
    if (this.e)
      return;
    Iterator localIterator1 = this.a.iterator();
    Object localObject;
    label42: int j;
    label74: int i;
    label100: label111: Button localButton;
    if (localIterator1.hasNext())
    {
      EditText localEditText = (EditText)localIterator1.next();
      localObject = localEditText;
      if (((View)localObject).getId() != 16908290)
        if ((((View)localObject).getVisibility() == 8) || (((View)localObject).getVisibility() == 4))
        {
          j = 0;
          if ((j == 0) || (!"".equals(localEditText.getText().toString().trim())))
            break label189;
          i = 1;
          Iterator localIterator3 = this.b.iterator();
          if (!localIterator3.hasNext())
            break label241;
          localButton = (Button)localIterator3.next();
          if (i != 0)
            break label235;
        }
    }
    label189: label235: for (boolean bool2 = true; ; bool2 = false)
    {
      localButton.setEnabled(bool2);
      break label111;
      if (((((View)localObject).getParent() instanceof View)) && (!(((View)localObject).getParent() instanceof TabHost)))
      {
        localObject = (View)((View)localObject).getParent();
        break label42;
      }
      j = 1;
      break label74;
      break;
      Iterator localIterator2 = this.d.iterator();
      while (true)
        if (localIterator2.hasNext())
          if (!((CheckBox)localIterator2.next()).isChecked())
          {
            i = 1;
            break;
          }
      i = 0;
      break label100;
    }
    label241: Iterator localIterator4 = this.c.iterator();
    label252: ImageButton localImageButton;
    if (localIterator4.hasNext())
    {
      localImageButton = (ImageButton)localIterator4.next();
      if (i != 0)
        break label291;
    }
    label291: for (boolean bool1 = true; ; bool1 = false)
    {
      localImageButton.setEnabled(bool1);
      break label252;
      break;
    }
  }

  public final void a(Button paramButton)
  {
    if (paramButton != null)
    {
      paramButton.setEnabled(false);
      this.b.add(paramButton);
      a();
    }
  }

  public final void a(EditText paramEditText)
  {
    this.a.add(paramEditText);
    a();
  }

  public void afterTextChanged(Editable paramEditable)
  {
    a();
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    a();
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.CommonEditTextHasNullChecker
 * JD-Core Version:    0.6.2
 */