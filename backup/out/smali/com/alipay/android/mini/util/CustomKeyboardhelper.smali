.class public Lcom/alipay/android/mini/util/CustomKeyboardhelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/alipay/android/mini/widget/CustomEditText;

.field private b:Lcom/alipay/android/mini/util/KeyboardUtil;

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/app/Activity;

.field private e:Landroid/os/Handler;


# direct methods
.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->b:Lcom/alipay/android/mini/util/KeyboardUtil;

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/KeyboardUtil;->a()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->d:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/app/R$id;->W:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->c:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sub-int v0, v1, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getInputType()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    iget-object v1, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->b:Lcom/alipay/android/mini/util/KeyboardUtil;

    invoke-virtual {v1}, Lcom/alipay/android/mini/util/KeyboardUtil;->b()V

    iget-object v1, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setSelection(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/util/CustomKeyboardhelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/util/CustomKeyboardhelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->d:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/android/mini/util/CustomKeyboardhelper$2;

    iget-object v3, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->e:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/alipay/android/mini/util/CustomKeyboardhelper$2;-><init>(Lcom/alipay/android/mini/util/CustomKeyboardhelper;Landroid/os/Handler;)V

    const-string/jumbo v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->a()V

    :cond_0
    return v4
.end method
