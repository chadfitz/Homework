import { useContext } from 'react';
import { PupContext } from '../../context/PupContext';

const PupImage = () => {
  const { puppyType } = useContext(PupContext);

  return (
    <img src={puppyType} alt="pup" />
  );
};

export default PupImage;