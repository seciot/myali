.class Lcom/alipay/mobile/common/media/MediaLoadManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$onCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

.field final synthetic val$onPrepared:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/io/File;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$5;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$5;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$5;->val$onPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object p4, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$5;->val$onCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$5;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    #getter for: Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$800(Lcom/alipay/mobile/common/media/MediaLoadManager;)Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$5;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$5;->val$onPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v3, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$5;->val$onCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->play(Ljava/io/File;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method
