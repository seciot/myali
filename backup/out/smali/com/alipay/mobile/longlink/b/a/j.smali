.class final Lcom/alipay/mobile/longlink/b/a/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/longlink/b/a/i;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/longlink/b/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/a/j;->a:Lcom/alipay/mobile/longlink/b/a/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/j;->a:Lcom/alipay/mobile/longlink/b/a/i;

    invoke-static {v0, p0}, Lcom/alipay/mobile/longlink/b/a/i;->a(Lcom/alipay/mobile/longlink/b/a/i;Ljava/lang/Thread;)V

    return-void
.end method
