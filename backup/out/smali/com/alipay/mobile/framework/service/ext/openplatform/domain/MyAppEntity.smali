.class public Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;
.super Ljava/lang/Object;
.source "MyAppEntity.java"


# static fields
.field public static final COL_APPDISPLAYPLACE:Ljava/lang/String; = "appDisplayPlace"

.field public static final COL_APPID:Ljava/lang/String; = "appId"

.field public static final COL_USERRANK:Ljava/lang/String; = "userRank"


# instance fields
.field private appDisplayPlace:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        index = true
        unique = true
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private userRank:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    .line 19
    const-wide/high16 v0, -0x4000

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    .line 19
    const-wide/high16 v0, -0x4000

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appId:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    .line 69
    iput-wide p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    .line 70
    return-void
.end method


# virtual methods
.method public getAppDisplayPlace()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->id:I

    return v0
.end method

.method public getUserRank()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    return-wide v0
.end method

.method public setAppDisplayPlace(I)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    .line 40
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->id:I

    .line 28
    return-void
.end method

.method public setUserRank(J)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userRank:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appDisplayPlace:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
