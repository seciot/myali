.class final Lcom/alipay/android/mini/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/MiniLabelInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/widget/e;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/e;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    #getter for: Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;
    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->access$000(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/e;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    #getter for: Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;
    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->access$000(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/e;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    #getter for: Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;
    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->access$000(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/e;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->access$100(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/e;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    #getter for: Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;
    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->access$000(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->removeIcon()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/e;->a:Lcom/alipay/android/mini/widget/MiniLabelInput;

    #calls: Lcom/alipay/android/mini/widget/MiniLabelInput;->a()V
    invoke-static {v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->access$200(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
