.class Landroid/taobao/service/appdevice/net/async/RequestParams$FileWrapper;
.super Ljava/lang/Object;


# instance fields
.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/async/RequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    iput-object p2, p0, Landroid/taobao/service/appdevice/net/async/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    iput-object p3, p0, Landroid/taobao/service/appdevice/net/async/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "nofilename"

    goto :goto_0
.end method
