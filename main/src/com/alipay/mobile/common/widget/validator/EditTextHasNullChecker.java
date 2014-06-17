package com.alipay.mobile.common.widget.validator;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TabHost;
import android.widget.TextView;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public class EditTextHasNullChecker
  implements TextWatcher, CompoundButton.OnCheckedChangeListener
{
  private List a = new CopyOnWriteArrayList();
  private List b = new CopyOnWriteArrayList();
  private Set c = new HashSet();
  private Set d = new HashSet();

  private void a()
  {
    if ((this.c != null) && (this.c.size() == 0))
      return;
    Iterator localIterator1 = this.a.iterator();
    int i;
    label80: label91: Button localButton;
    while (true)
      if (localIterator1.hasNext())
      {
        EditText localEditText = (EditText)localIterator1.next();
        if ((a(localEditText)) && ("".equals(localEditText.getText().toString().trim())))
        {
          i = 1;
          Iterator localIterator4 = this.c.iterator();
          if (localIterator4.hasNext())
          {
            localButton = (Button)localIterator4.next();
            if (i != 0)
              break label289;
          }
        }
      }
    label289: for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      break label91;
      break;
      Iterator localIterator2 = this.b.iterator();
      while (true)
        if (localIterator2.hasNext())
        {
          HashMap localHashMap = (HashMap)localIterator2.next();
          if ((localHashMap.get("TextViewIndex") instanceof TextView))
          {
            TextView localTextView = (TextView)localHashMap.get("TextViewIndex");
            if ((a(localTextView)) && (("".equals(localTextView.getText().toString().trim())) || (localTextView.getText().toString().trim().equals(localHashMap.get("TextViewDefalutTxt")))))
            {
              i = 1;
              break;
            }
          }
        }
      Iterator localIterator3 = this.d.iterator();
      while (true)
        if (localIterator3.hasNext())
          if (!((CheckBox)localIterator3.next()).isChecked())
          {
            i = 1;
            break;
          }
      i = 0;
      break label80;
    }
  }

  private static boolean a(View paramView)
  {
    while (true)
    {
      if (paramView.getId() == 16908290)
        return true;
      if ((paramView.getVisibility() == 8) || (paramView.getVisibility() == 4))
        return false;
      if ((!(paramView.getParent() instanceof View)) || ((paramView.getParent() instanceof TabHost)))
        break;
      paramView = (View)paramView.getParent();
    }
    return true;
  }

  public void addNeedCheckCheckBox(CheckBox paramCheckBox)
  {
    this.d.add(paramCheckBox);
    a();
  }

  public void addNeedCheckTextView(TextView paramTextView, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("TextViewIndex", paramTextView);
    localHashMap.put("TextViewDefalutTxt", paramString);
    this.b.add(localHashMap);
    a();
  }

  public void addNeedCheckView(EditText paramEditText)
  {
    paramEditText.addTextChangedListener(this);
    this.a.add(paramEditText);
    a();
  }

  public void addNeedEnabledButton(Button paramButton)
  {
    if (paramButton != null)
    {
      paramButton.setEnabled(false);
      this.c.add(paramButton);
      a();
    }
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

  public void removeButton(Button paramButton)
  {
    this.c.remove(paramButton);
  }

  public void removeNeedCheckView(EditText paramEditText)
  {
    paramEditText.removeTextChangedListener(this);
    this.a.remove(paramEditText);
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.widget.validator.EditTextHasNullChecker
 * JD-Core Version:    0.6.2
 */