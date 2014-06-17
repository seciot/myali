.class Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;

.field final synthetic this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;->this$0:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->stopRecording()V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;

    invoke-interface {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;->onMaxRecordDurationCompleted()V

    :cond_0
    return-void
.end method

.method setListener(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;

    return-void
.end method
