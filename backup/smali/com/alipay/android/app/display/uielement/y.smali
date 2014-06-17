.class final Lcom/alipay/android/app/display/uielement/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UIButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIButton;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/y;->b:Lcom/alipay/android/app/display/uielement/UIButton;

    iput-boolean p2, p0, Lcom/alipay/android/app/display/uielement/y;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/y;->b:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIButton;->b(Lcom/alipay/android/app/display/uielement/UIButton;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/y;->b:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIButton;->b(Lcom/alipay/android/app/display/uielement/UIButton;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/y;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/y;->b:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIButton;->b(Lcom/alipay/android/app/display/uielement/UIButton;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/y;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    :cond_0
    return-void
.end method
