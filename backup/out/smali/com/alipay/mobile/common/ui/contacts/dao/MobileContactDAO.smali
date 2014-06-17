.class public Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;


# static fields
.field public static final ALL_CHARACTER:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

.field public static final FORMAT:Ljava/lang/String; = "^[a-z,A-Z].*$"

.field public static final INFO_UPLOAD_MOBILE_TIME:Ljava/lang/String; = "uploadMobileTime"

.field private static a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO; = null

.field private static s:J = 0x0L

.field public static final sMSG_BINDING_UPDATE:I = 0x66

.field public static final sMSG_DATA_LOADED:I = 0x65

.field public static final sMSG_DATA_PARTIAL_LOADED:I = 0x64

.field public static final sMSG_DATA_START_LOAD:I = 0x63


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/AsyncQueryHandler;

.field private e:Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;

.field private f:Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

.field private g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

.field private h:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

.field private i:Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;

.field private j:J

.field private k:Landroid/content/SharedPreferences;

.field private l:Ljava/lang/String;

.field private m:Landroid/os/Handler;

.field private n:Landroid/content/Context;

.field private o:Ljava/lang/String;

.field private volatile p:I

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->s:J

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    iput-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    iput-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->i:Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->j:J

    iput-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->k:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->l:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->q:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->r:Z

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;-><init>(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x65

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(Ljava/util/List;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->d:Landroid/content/AsyncQueryHandler;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->isContactsUploadPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a()V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(I)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;

    iget-object v4, v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->mobileNo:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->mobileNo:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    iget-object v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;

    if-eqz v1, :cond_2

    iget-boolean v4, v1, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->binding:Z

    iput-boolean v4, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isBindInfo:Z

    iget-object v4, v1, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->enabledStatus:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->enabledStatus:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->userHasApp:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isAppUser:Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    if-eqz p3, :cond_4

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(I)V

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)V
    .locals 15

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "sort_key"

    aput-object v4, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "sort_key COLLATE LOCALIZED asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v7, :cond_1

    invoke-direct {p0, v8}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->r:Z

    :goto_0
    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "sort_key"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v0, "phonebook_label"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    invoke-direct {v10}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;-><init>()V

    iput-object v0, v10, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->displayName:Ljava/lang/String;

    iput-object v9, v10, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "^[a-z,A-Z].*$"

    invoke-virtual {v0, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v0, "#"

    if-ltz v5, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/common/ui/contacts/util/PinYinAndHanziUtils;->isHanzi(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "^[a-z,A-Z].*$"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v0, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    iget-object v0, v10, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->sortKey:Ljava/lang/String;

    :cond_2
    invoke-static {v6}, Lcom/alipay/mobile/common/ui/contacts/util/MobileNumberUtilz;->getMobileNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    iput-object v6, v10, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    const-string/jumbo v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v6, 0x64

    if-ne v0, v6, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v6, 0xc8

    if-le v0, v6, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-boolean v6, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->r:Z

    if-nez v6, :cond_4

    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/ContractSearch;->genSearchIndex(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    const/16 v6, 0x64

    :try_start_4
    invoke-direct {p0, v0, v6}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(Ljava/util/List;I)V

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "load error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    invoke-direct {p0, v8}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->r:Z

    goto/16 :goto_0

    :cond_7
    :try_start_6
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->r:Z

    throw v0

    :cond_9
    :try_start_7
    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const-string/jumbo v3, "phoneBookView"

    const-string/jumbo v4, "Loaddata"

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-wide v13, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->s:J

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/common/ui/contacts/util/LogAgentUtil;->log(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->s:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-wide v0

    :try_start_8
    invoke-static {v8}, Lcom/alipay/mobile/common/ui/contacts/util/ContractSearch;->genSearchIndex(Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_6
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6b63\u5e38\u8017\u65f6: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xc

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5206 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u79d2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u8c6a\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->isContactsUploadPermitted()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v8, v0, v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(Ljava/util/List;Ljava/util/List;Z)V

    :cond_a
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const-string/jumbo v3, "phoneBookView"

    const-string/jumbo v4, "GenIndex"

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-wide v13, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->s:J

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/common/ui/contacts/util/LogAgentUtil;->log(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->s:J

    invoke-direct {p0, v8}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->r:Z

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f02\u5e38\u8017\u65f6: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5206 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u79d2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u8c6a\u79d2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v7, v6

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v1, v6

    goto/16 :goto_4

    :catch_3
    move-exception v6

    goto/16 :goto_3
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->h:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->k:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->j:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->j:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->q:Z

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->e:Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->compareMatchedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->i:Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->i:Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;->writeMobileMatchInfoHistory(Ljava/util/List;I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static compareMatchedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;

    iget-object v3, v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->mobileNo:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->mobileNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;

    iget-object v1, v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->mobileNo:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->mobileNo:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;

    if-eqz v1, :cond_3

    iget-boolean v4, v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->binding:Z

    iput-boolean v4, v1, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->binding:Z

    iget-object v0, v0, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->enabledStatus:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;->enabledStatus:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    return-object v0
.end method


# virtual methods
.method public clearContext()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->q:Z

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->n:Landroid/content/Context;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->m:Landroid/os/Handler;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->h:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->e:Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->f:Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->i:Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->o:Ljava/lang/String;

    return-void
.end method

.method public getContactData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b:Ljava/util/List;

    return-object v0
.end method

.method public getContactsUploader()Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    return-object v0
.end method

.method public getLoadState()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    return v0
.end method

.method public getMatchedContact(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/alipay/mobile/common/ui/contacts/util/ContractSearch;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sub-long v1, v3, v1

    invoke-virtual {v5, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u67e5\u8be2\u8017\u65f6: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u79d2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u8c6a\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public getSNSService()Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->f:Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->o:Ljava/lang/String;

    return-object v0
.end method

.method public initContext(Landroid/app/Activity;Landroid/os/Handler;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->q:Z

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->n:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->m:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;-><init>(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->h:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->e:Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;

    const-class v1, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->f:Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->o:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->o:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mobilematch.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->i:Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uploadMobileTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->n:Landroid/content/Context;

    const-string/jumbo v1, "uploadMobileTime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->k:Landroid/content/SharedPreferences;

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->loadAllContacts()V

    :goto_1
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(I)V

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(I)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public loadAllContacts()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->loadAllContacts(Z)V

    return-void
.end method

.method public loadAllContacts(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->r:Z

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->s:J

    const/16 v0, 0x63

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$1;-><init>(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start load error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b:Ljava/util/List;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(Ljava/util/List;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    goto :goto_0
.end method

.method public loadMatchInfoFromCache()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->i:Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->i:Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache;->readMobileMatchInfoHistory()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->c:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a(Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public loadMatchInfoFromRpc()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;-><init>(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetContactPerson()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedNum:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isNumberMatch:Z

    iput-boolean v4, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->isSearch:Z

    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedNum:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedWord:Ljava/lang/String;

    iput v3, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex:I

    iput v3, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedStartIndex4Phone:I

    iput v3, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex:I

    iput v3, v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->matchedEndIndex4Phone:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tryToUploadMobileContacts()V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->p:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->a()V

    :cond_0
    return-void
.end method

.method public uploadFailed()V
    .locals 0

    return-void
.end method

.method public uploadSuccess()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->loadMatchInfoFromRpc()V

    return-void
.end method
