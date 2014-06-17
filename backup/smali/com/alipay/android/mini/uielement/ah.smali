.class final Lcom/alipay/android/mini/uielement/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alipay/android/mini/uielement/UISimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UISimplePassword;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ah;->b:Lcom/alipay/android/mini/uielement/UISimplePassword;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/ah;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ah;->b:Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->h()V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ah;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ah;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/app/R$string;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
