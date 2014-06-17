.class Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #getter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$000(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #getter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->d:Landroid/hardware/Sensor;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$100(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #getter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$000(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    iget-object v2, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    #getter for: Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->d:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->access$100(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
