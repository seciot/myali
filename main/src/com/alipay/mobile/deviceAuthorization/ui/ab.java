package com.alipay.mobile.deviceAuthorization.ui;

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

public final class ab
  implements TextWatcher, CompoundButton.OnCheckedChangeListener
{
  private List<EditText> a = new CopyOnWriteArrayList();
  private List<HashMap<String, Object>> b = new CopyOnWriteArrayList();
  private Set<Button> c = new HashSet();
  private Set<CheckBox> d = new HashSet();

  private void a()
  {
    Iterator localIterator1 = this.a.iterator();
    int i;
    label68: Button localButton;
    while (localIterator1.hasNext())
    {
      EditText localEditText = (EditText)localIterator1.next();
      if ((a(localEditText)) && ("".equals(localEditText.getText().toString())))
      {
        i = 1;
        Iterator localIterator4 = this.c.iterator();
        if (!localIterator4.hasNext())
          return;
        localButton = (Button)localIterator4.next();
        if (i != 0)
          break label260;
      }
    }
    label260: for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      break label68;
      Iterator localIterator2 = this.b.iterator();
      while (true)
        if (localIterator2.hasNext())
        {
          HashMap localHashMap = (HashMap)localIterator2.next();
          if ((localHashMap.get("TextViewIndex") instanceof TextView))
          {
            TextView localTextView = (TextView)localHashMap.get("TextViewIndex");
            if ((a(localTextView)) && (("".equals(localTextView.getText().toString())) || (localTextView.getText().toString().equals(localHashMap.get("TextViewDefalutTxt")))))
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
      break;
    }
  }

  private static boolean a(View paramView)
  {
    while (true)
    {
      if ((paramView.getVisibility() == 8) || (paramView.getVisibility() == 4))
        return false;
      if ((!(paramView.getParent() instanceof View)) || ((paramView.getParent() instanceof TabHost)))
        break;
      paramView = (View)paramView.getParent();
    }
    return true;
  }

  public final void a(Button paramButton)
  {
    if (paramButton != null)
    {
      paramButton.setEnabled(false);
      this.c.add(paramButton);
      a();
    }
  }

  public final void a(EditText paramEditText)
  {
    paramEditText.addTextChangedListener(this);
    this.a.add(paramEditText);
    a();
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    a();
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    a();
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.ab
 * JD-Core Version:    0.6.2
 */