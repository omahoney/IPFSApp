class Work < ActiveRecord::Base
  has_attached_file :work_document
  do_not_validate_attachment_file_type :work_document


  def self.addToIPFS(work_id)
    @work = Work.find(work_id)
    ipfs = IPFS::Connection.new
    ipfshash =ipfs.add File.new(@work.work_document)
    @work.update(:ipfshash => ipfshash)
   end

end
