.class public Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Landroid/net/Uri;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "has_phone_number"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->a:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->b:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p2, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Lcom/alipay/mobileprod/biz/contact/model/UploadContact;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;",
            ">;)",
            "Lcom/alipay/mobileprod/biz/contact/model/UploadContact;"
        }
    .end annotation

    new-instance v1, Lcom/alipay/mobileprod/biz/contact/model/UploadContact;

    invoke-direct {v1}, Lcom/alipay/mobileprod/biz/contact/model/UploadContact;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileprod/biz/contact/model/UploadContact;->ownerUid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileprod/biz/contact/model/UploadContact;->ownerName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileprod/biz/contact/model/UploadContact;->ownerMobile:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileprod/biz/contact/model/UploadContact;->deviceId:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;

    new-instance v4, Lcom/alipay/mobileprod/biz/contact/model/UploadContactRecord;

    invoke-direct {v4}, Lcom/alipay/mobileprod/biz/contact/model/UploadContactRecord;-><init>()V

    iget-object v5, v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobileprod/biz/contact/model/UploadContactRecord;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobileprod/biz/contact/model/UploadContactRecord;->mobile:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, v4, Lcom/alipay/mobileprod/biz/contact/model/UploadContactRecord;->memo:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v2, v1, Lcom/alipay/mobileprod/biz/contact/model/UploadContact;->recordList:Ljava/util/List;

    return-object v1
.end method

.method private a()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getInstance()Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getLoadState()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getInstance()Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactData()Ljava/util/List;

    move-result-object v2

    move v1, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;

    invoke-direct {v3}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    iget-object v0, v3, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v7

    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v6

    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v8

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v9

    const/4 v4, 0x3

    const-string/jumbo v5, "sort_key"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v2, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;

    invoke-direct {v2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;-><init>()V

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "-"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "^((\\+{0,1}86){0,1})1[0-9]{10}"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "^(\\+{0,1}86)"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    iget-object v0, v2, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getUserContacts query done "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v7

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->a()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->b(Ljava/util/ArrayList;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit16 v5, v1, 0x3e8

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v5, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit16 v3, v1, 0x3e8

    add-int/lit8 v7, v1, 0x1

    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v4, v3, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v6, p1, v2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->a(Ljava/util/ArrayList;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;Z)V

    const/4 v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit16 v3, v5, 0x3e8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {p0, v1, p1, v2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->a(Ljava/util/ArrayList;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;Z)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -count1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;",
            ">;",
            "Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->a(Ljava/util/ArrayList;)Lcom/alipay/mobileprod/biz/contact/model/UploadContact;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;

    iget-object v2, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v1, v2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v1, v0, p3}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;->uploadContacts(Lcom/alipay/mobileprod/biz/contact/model/UploadContact;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload done "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->b(Ljava/util/ArrayList;)Z

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload_contacts_all_time_interval"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;->uploadSuccess()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;->uploadFailed()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;->uploadFailed()V

    goto :goto_0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploaded_contacts"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12

    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_13

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_14

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :goto_1
    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_0
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_3
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    :cond_1
    :goto_4
    if-eqz v1, :cond_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    :cond_2
    :goto_5
    if-eqz v3, :cond_0

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_6
    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v2, :cond_3

    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    :cond_3
    :goto_7
    if-eqz v1, :cond_4

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    :cond_4
    :goto_8
    if-eqz v3, :cond_0

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_9
    :try_start_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v2, :cond_5

    :try_start_10
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_5
    :goto_a
    if-eqz v1, :cond_6

    :try_start_11
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    :cond_6
    :goto_b
    if-eqz v3, :cond_0

    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_c
    if-eqz v2, :cond_7

    :try_start_13
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    :cond_7
    :goto_d
    if-eqz v1, :cond_8

    :try_start_14
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    :cond_8
    :goto_e
    if-eqz v3, :cond_9

    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11

    :cond_9
    :goto_f
    throw v0

    :catch_6
    move-exception v2

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v2

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v2

    goto :goto_7

    :catch_c
    move-exception v1

    goto :goto_8

    :catch_d
    move-exception v2

    goto :goto_a

    :catch_e
    move-exception v1

    goto :goto_b

    :catch_f
    move-exception v2

    goto :goto_d

    :catch_10
    move-exception v1

    goto :goto_e

    :catch_11
    move-exception v1

    goto :goto_f

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_c

    :catchall_2
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_c

    :catch_12
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_9

    :catch_13
    move-exception v2

    move-object v2, v0

    goto :goto_9

    :catch_14
    move-exception v0

    goto :goto_9

    :catch_15
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_6

    :catch_16
    move-exception v2

    move-object v2, v0

    goto :goto_6

    :catch_17
    move-exception v0

    goto :goto_6

    :catch_18
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_3

    :catch_19
    move-exception v2

    move-object v2, v0

    goto/16 :goto_3

    :catch_1a
    move-exception v0

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;)V
    .locals 5

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->b()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->a(Ljava/util/ArrayList;)Lcom/alipay/mobileprod/biz/contact/model/UploadContact;

    move-result-object v0

    :try_start_0
    new-instance v3, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;

    iget-object v4, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v3, v4}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;->uploadContacts(Lcom/alipay/mobileprod/biz/contact/model/UploadContact;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->b(Ljava/util/ArrayList;)Z

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;->uploadSuccess()V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;->uploadFailed()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;->uploadFailed()V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;->uploadSuccess()V

    goto :goto_1
.end method

.method private b(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$ContactInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->d:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uploaded_contacts"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    :try_start_2
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :try_start_3
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_1
    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_0
    :goto_2
    const/4 v0, 0x1

    :cond_1
    :goto_3
    return v0

    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    :goto_4
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_3
    :goto_6
    if-eqz v3, :cond_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    :goto_7
    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_4
    :goto_8
    if-eqz v2, :cond_5

    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :cond_5
    :goto_9
    if-eqz v4, :cond_1

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_a
    if-eqz v3, :cond_6

    :try_start_d
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :cond_6
    :goto_b
    if-eqz v2, :cond_7

    :try_start_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :cond_7
    :goto_c
    if-eqz v4, :cond_8

    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    :cond_8
    :goto_d
    throw v0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v1

    goto :goto_b

    :catch_c
    move-exception v1

    goto :goto_c

    :catch_d
    move-exception v1

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_a

    :catch_e
    move-exception v1

    move-object v3, v2

    goto :goto_7

    :catch_f
    move-exception v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_7

    :catch_10
    move-exception v2

    move-object v2, v1

    goto :goto_7

    :catch_11
    move-exception v1

    move-object v1, v2

    move-object v3, v4

    goto :goto_4

    :catch_12
    move-exception v3

    move-object v3, v4

    goto :goto_4

    :catch_13
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_4
.end method


# virtual methods
.method public isContactsUploadPermitted()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "read_contacts_permission"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public permitContactsUpload()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "read_contacts_permission"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public uploadContactsWithStrategy(Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;)V
    .locals 10

    const-wide/16 v8, 0x3c

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->isContactsUploadPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;->uploadFailed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->isAppend()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$1;-><init>(Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;)V

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$1;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->getUploadAllTimeInterval()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "upload_contacts_all_time_interval"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    int-to-long v4, v0

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    mul-long/2addr v4, v8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ne v1, v0, :cond_4

    new-instance v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$2;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$2;-><init>(Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;)V

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$2;->start()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$3;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$3;-><init>(Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;)V

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$3;->start()V

    goto :goto_0
.end method
