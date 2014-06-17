.class public abstract Lcom/alipay/mobile/alipassapp/biz/model/f;
.super Ljava/lang/Object;


# static fields
.field public static final V_1:Ljava/lang/String; = "1"

.field public static final V_2:Ljava/lang/String; = "2"


# instance fields
.field private lastModified:J

.field private passFileName:Ljava/lang/String;

.field private passPath:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/f;->lastModified:J

    return-wide v0
.end method

.method public getPassFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/f;->passFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/f;->passPath:Ljava/io/File;

    return-object v0
.end method

.method public setLastModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/f;->lastModified:J

    return-void
.end method

.method public setPassFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/f;->passFileName:Ljava/lang/String;

    return-void
.end method

.method public setPassPath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/f;->passPath:Ljava/io/File;

    return-void
.end method
