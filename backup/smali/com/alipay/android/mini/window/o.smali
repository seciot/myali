.class final Lcom/alipay/android/mini/window/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/mini/window/MiniPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniPayActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/window/o;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    sget v1, Lcom/alipay/android/app/R$string;->g:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->a:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/o;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->b(Lcom/alipay/android/mini/window/MiniPayActivity;)Lcom/alipay/android/mini/widget/MiniProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->b(Lcom/alipay/android/mini/window/MiniPayActivity;)Lcom/alipay/android/mini/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/MiniProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->b(Lcom/alipay/android/mini/window/MiniPayActivity;)Lcom/alipay/android/mini/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/MiniProgressDialog;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->a(Lcom/alipay/android/mini/window/MiniPayActivity;)V

    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->b(Lcom/alipay/android/mini/window/MiniPayActivity;)Lcom/alipay/android/mini/widget/MiniProgressDialog;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    new-instance v2, Lcom/alipay/android/mini/widget/MiniProgressDialog;

    iget-object v3, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-direct {v2, v3}, Lcom/alipay/android/mini/widget/MiniProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/alipay/android/mini/window/MiniPayActivity;->a(Lcom/alipay/android/mini/window/MiniPayActivity;Lcom/alipay/android/mini/widget/MiniProgressDialog;)Lcom/alipay/android/mini/widget/MiniProgressDialog;

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->b(Lcom/alipay/android/mini/window/MiniPayActivity;)Lcom/alipay/android/mini/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/android/mini/widget/MiniProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->b(Lcom/alipay/android/mini/window/MiniPayActivity;)Lcom/alipay/android/mini/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/widget/MiniProgressDialog;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/mini/widget/MiniProgressDialog;

    iget-object v0, p0, Lcom/alipay/android/mini/window/o;->b:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniPayActivity;->b(Lcom/alipay/android/mini/window/MiniPayActivity;)Lcom/alipay/android/mini/widget/MiniProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/MiniProgressDialog;->show()V

    goto :goto_0
.end method
