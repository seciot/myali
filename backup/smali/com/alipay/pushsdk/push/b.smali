.class final Lcom/alipay/pushsdk/push/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/NotificationService;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/b;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/alipay/pushsdk/a/a;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/NotificationService;->a(Lcom/alipay/pushsdk/push/NotificationService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/a/a;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
