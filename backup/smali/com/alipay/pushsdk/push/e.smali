.class final Lcom/alipay/pushsdk/push/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/NotificationService;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/e;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/pushsdk/push/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/NotificationService;->b(Lcom/alipay/pushsdk/push/NotificationService;)Lcom/alipay/pushsdk/push/j;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/e/e;->a(Lcom/alipay/pushsdk/push/j;Ljava/lang/String;)Lcom/alipay/pushsdk/push/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/e/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
