.class public Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->a:I

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->b:Z

    return-void
.end method


# virtual methods
.method public getUploadAllTimeInterval()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->a:I

    return v0
.end method

.method public isAppend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->b:Z

    return v0
.end method

.method public setAppend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->b:Z

    return-void
.end method

.method public setUploadAllTimeInterval(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->a:I

    return-void
.end method
