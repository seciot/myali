.class Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;
.super Ljava/lang/Object;


# instance fields
.field mPath:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mUrl:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mPath:Ljava/lang/String;

    return-void
.end method
