.class Lcom/alipay/mobile/common/logagent/LogSendManager$UploadLogThread;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/logagent/LogSendManager$UploadLogThread;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/LogSendManager$UploadLogThread;->a:Landroid/content/Context;

    #calls: Lcom/alipay/mobile/common/logagent/LogSendManager;->a(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/alipay/mobile/common/logagent/LogSendManager;->access$000(Landroid/content/Context;)V

    return-void
.end method
