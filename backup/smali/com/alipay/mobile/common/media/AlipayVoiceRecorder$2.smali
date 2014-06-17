.class Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$2;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$2;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #getter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$000(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$2;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #getter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->h:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$200(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$2;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #getter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->h:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$200(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$2;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #getter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$000(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$2;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1
.end method
