.class final Lcom/alipay/android/mini/uielement/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/n;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/n;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/n;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIInput;->b(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/util/CardValidateInputUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a()V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/n;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/n;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/UIInput;->c(Lcom/alipay/android/mini/uielement/UIInput;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    return-void
.end method
