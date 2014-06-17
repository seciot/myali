.class final Lcom/alipay/android/widget/security/msgreceiver/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/msgreceiver/b;->b:Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/msgreceiver/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/b;->b:Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/msgreceiver/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;->a(Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;Landroid/content/Context;)V

    return-void
.end method
