package com.alipay.mobile.commonui.widget;

import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import com.alipay.mobile.commonui.inputfomatter.APFormatter;
import java.lang.reflect.Field;

class APInputBox$1
  implements TextWatcher
{
  APInputBox$1(APInputBox paramAPInputBox)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    boolean bool = true;
    APInputBox localAPInputBox = this.this$0;
    if (paramEditable.length() == 0);
    InputFilter[] arrayOfInputFilter;
    while (true)
    {
      localAPInputBox.onInputTextStatusChanged(bool, APInputBox.access$000(this.this$0).hasFocus());
      if (APInputBox.access$100(this.this$0) == null)
        return;
      arrayOfInputFilter = paramEditable.getFilters();
      if ((arrayOfInputFilter != null) && (arrayOfInputFilter.length > 0))
      {
        int i = arrayOfInputFilter.length;
        int j = 0;
        label68: if (j < i)
        {
          InputFilter localInputFilter = arrayOfInputFilter[j];
          if ((localInputFilter instanceof InputFilter.LengthFilter));
          try
          {
            Field[] arrayOfField = APInputBox.access$100(this.this$0).getClass().getDeclaredFields();
            int k = arrayOfField.length;
            for (int m = 0; ; m++)
              if (m < k)
              {
                Field localField = arrayOfField[m];
                if (localField.getType().getSimpleName().startsWith("InputFilter"))
                {
                  localField.setAccessible(true);
                  localField.set(APInputBox.access$100(this.this$0), new InputFilter[] { localInputFilter });
                }
              }
              else
              {
                j++;
                break label68;
                bool = false;
                break;
              }
          }
          catch (Exception localException)
          {
            while (true)
              localException.printStackTrace();
          }
        }
      }
    }
    paramEditable.setFilters(new InputFilter[0]);
    APInputBox.access$100(this.this$0).format(paramEditable);
    paramEditable.setFilters(arrayOfInputFilter);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APInputBox.1
 * JD-Core Version:    0.6.2
 */