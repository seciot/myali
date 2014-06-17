.class final Lcom/alipay/android/mini/window/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/AbstractUIForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/AbstractUIForm;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/f;->a:Lcom/alipay/android/mini/window/AbstractUIForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/f;->a:Lcom/alipay/android/mini/window/AbstractUIForm;

    iget-object v0, v0, Lcom/alipay/android/mini/window/AbstractUIForm;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/MiniUiWindow;->b()Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->z()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->z()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
