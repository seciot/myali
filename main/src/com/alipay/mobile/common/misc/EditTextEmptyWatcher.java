package com.alipay.mobile.common.misc;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TabHost;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public class EditTextEmptyWatcher
  implements TextWatcher
{
  protected List<EditText> mNeedCheckViews = new CopyOnWriteArrayList();
  protected Set<Button> mNeedEnableButtons = new HashSet();

  public void addNeedCheckView(EditText paramEditText)
  {
    this.mNeedCheckViews.add(paramEditText);
    paramEditText.addTextChangedListener(this);
    validate();
  }

  public void addNeedEnabledButton(Button paramButton)
  {
    if (paramButton != null)
    {
      paramButton.setEnabled(false);
      this.mNeedEnableButtons.add(paramButton);
      validate();
    }
  }

  public void afterTextChanged(Editable paramEditable)
  {
    validate();
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  protected boolean checkHasNull()
  {
    Iterator localIterator = this.mNeedCheckViews.iterator();
    while (localIterator.hasNext())
    {
      EditText localEditText = (EditText)localIterator.next();
      if ((getViewVisiable(localEditText)) && ("".equals(localEditText.getText().toString().trim())))
        return true;
    }
    return false;
  }

  protected boolean getViewVisiable(View paramView)
  {
    if ((paramView.getVisibility() == 8) || (paramView.getVisibility() == 4))
      return false;
    if (((paramView.getParent() instanceof View)) && (!(paramView.getParent() instanceof TabHost)))
      return getViewVisiable((View)paramView.getParent());
    return true;
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void removeButton(Button paramButton)
  {
    this.mNeedEnableButtons.remove(paramButton);
  }

  public void removeNeedCheckView(EditText paramEditText)
  {
    this.mNeedCheckViews.remove(paramEditText);
    validate();
  }

  protected void validate()
  {
    boolean bool1 = checkHasNull();
    Iterator localIterator = this.mNeedEnableButtons.iterator();
    if (localIterator.hasNext())
    {
      Button localButton = (Button)localIterator.next();
      if (!bool1);
      for (boolean bool2 = true; ; bool2 = false)
      {
        localButton.setEnabled(bool2);
        break;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.EditTextEmptyWatcher
 * JD-Core Version:    0.6.2
 */