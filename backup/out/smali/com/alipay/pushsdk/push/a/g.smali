.class final Lcom/alipay/pushsdk/push/a/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/a/f;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/g;->a:Lcom/alipay/pushsdk/push/a/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/g;->a:Lcom/alipay/pushsdk/push/a/f;

    invoke-static {v0, p0}, Lcom/alipay/pushsdk/push/a/f;->a(Lcom/alipay/pushsdk/push/a/f;Ljava/lang/Thread;)V

    return-void
.end method
