package com.alipay.mobile.mobilerechargeapp.utils;

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
import com.alipay.mobile.ui.R.id;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public class CommonEditTextHasNullChecker
  implements TextWatcher, CompoundButton.OnCheckedChangeListener
{
  private List a = new CopyOnWriteArrayList();
  private Set b = new HashSet();
  private Set c = new HashSet();
  private Set d = new HashSet();
  private boolean e = false;

  private void a()
  {
    if (this.e)
      return;
    Iterator localIterator1 = this.a.iterator();
    Object localObject;
    label42: int j;
    label75: int i;
    label120: Button localButton;
    if (localIterator1.hasNext())
    {
      EditText localEditText = (EditText)localIterator1.next();
      localObject = localEditText;
      if (((View)localObject).getId() != R.id.content)
        if ((((View)localObject).getVisibility() == 8) || (((View)localObject).getVisibility() == 4))
        {
          j = 0;
          if ((j == 0) || ((!"".equals(localEditText.getText().toString().trim())) && (localEditText.getText().toString().trim().length() >= 6)))
            break label209;
          i = 1;
          Iterator localIterator3 = this.b.iterator();
          label131: if (!localIterator3.hasNext())
            break label261;
          localButton = (Button)localIterator3.next();
          if (i != 0)
            break label255;
        }
    }
    label209: label255: for (boolean bool2 = true; ; bool2 = false)
    {
      localButton.setEnabled(bool2);
      break label131;
      if (((((View)localObject).getParent() instanceof View)) && (!(((View)localObject).getParent() instanceof TabHost)))
      {
        localObject = (View)((View)localObject).getParent();
        break label42;
      }
      j = 1;
      break label75;
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
      break label120;
    }
    label261: Iterator localIterator4 = this.c.iterator();
    label272: ImageButton localImageButton;
    if (localIterator4.hasNext())
    {
      localImageButton = (ImageButton)localIterator4.next();
      if (i != 0)
        break label311;
    }
    label311: for (boolean bool1 = true; ; bool1 = false)
    {
      localImageButton.setEnabled(bool1);
      break label272;
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
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.utils.CommonEditTextHasNullChecker
 * JD-Core Version:    0.6.2
 */