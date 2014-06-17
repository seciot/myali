.class public Lcom/alipay/android/mini/widget/MiniProgressDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/alipay/android/app/R$style;->b:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Lcom/alipay/android/mini/widget/MiniProgressDialog;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/android/app/R$layout;->I:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniProgressDialog;->setContentView(I)V

    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
