.class final Lcom/alipay/pushsdk/push/a/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/a/j;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/k;->a:Lcom/alipay/pushsdk/push/a/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/k;->a:Lcom/alipay/pushsdk/push/a/j;

    invoke-static {v0, p0}, Lcom/alipay/pushsdk/push/a/j;->a(Lcom/alipay/pushsdk/push/a/j;Ljava/lang/Thread;)V

    return-void
.end method
