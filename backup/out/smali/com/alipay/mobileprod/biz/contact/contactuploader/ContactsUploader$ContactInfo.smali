.class Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public phoneName:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;

    iget-object v1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
