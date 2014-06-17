.class Lcom/alipay/mobile/common/media/VoiceRecorder$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/media/VoiceRecorder;

.field final synthetic val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/media/VoiceRecorder;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder$2;->this$0:Lcom/alipay/mobile/common/media/VoiceRecorder;

    iput-object p2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder$2;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder$2;->this$0:Lcom/alipay/mobile/common/media/VoiceRecorder;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/media/VoiceRecorder;->onCompletion(Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder$2;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder$2;->this$0:Lcom/alipay/mobile/common/media/VoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stopProgress()V

    return-void
.end method
