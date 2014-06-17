.class public abstract Lcom/alipay/mobile/framework/MicroDescription;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/ClassLoader;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->e:Z

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->d:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isLagacyApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->e:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->d:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setLagacyApp(Z)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->e:Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->b:Ljava/lang/String;

    return-object p0
.end method
