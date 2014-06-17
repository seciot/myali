.class Lcom/alipay/mobile/common/media/MediaLoadManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/media/MediaLoadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$4;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$4;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    const/16 v1, 0x103

    iget-object v2, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$4;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    #getter for: Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;
    invoke-static {v2}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$700(Lcom/alipay/mobile/common/media/MediaLoadManager;)Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$4;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    #getter for: Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;
    invoke-static {v3}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$700(Lcom/alipay/mobile/common/media/MediaLoadManager;)Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mPath:Ljava/lang/String;

    #calls: Lcom/alipay/mobile/common/media/MediaLoadManager;->a(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$500(Lcom/alipay/mobile/common/media/MediaLoadManager;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
